import requests
from bs4 import BeautifulSoup
import json
import csv
from colorama import Fore, Style
import time

from movie_scrapper import scrape_movie_details_2
import xpaths

# Set the number of movies to scrape
NUM_MOVIES_TO_SCRAPE = 1000 # Change this value to the number of movies you want

# Define the base URL of the movie list
BASE_URL = "https://www.imdb.com/list/ls006266261/"

# Function for color-coded logging
def log(message, level="info"):
    if level == "info":
        print(f"{Fore.CYAN}[INFO] {message}{Style.RESET_ALL}")
    elif level == "success":
        print(f"{Fore.GREEN}[SUCCESS] {message}{Style.RESET_ALL}")
    elif level == "warning":
        print(f"{Fore.YELLOW}[WARNING] {message}{Style.RESET_ALL}")
    elif level == "error":
        print(f"{Fore.RED}[ERROR] {message}{Style.RESET_ALL}")

# Function to query Ollama with the movie page content
def query_ollama(content):
    OLLAMA_URL = "http://localhost:11434/api/chat"
    headers = {"Content-Type": "application/json"}
    prompt = f"""
    Instructions: You are a movie details extractor. Analyze the provided webpage content and extract the following information as JSON:
    - ID
    - Title
    - Duration
    - Rating
    - Language
    - Country
    - ReleaseYear
    - Genres
    - StoryLine
    - Rated
    - Director
    
    If any field is missing or unavailable, use "N/A" as the value. Content starts below:
    
    {content}
    """
    data = {"model": "llama3.1", "messages": [{"role": "user", "content": prompt}]}
    
    log("Sending content to Ollama for processing...", "info")
    response = requests.post(OLLAMA_URL, headers=headers, data=json.dumps(data))
    response.raise_for_status()
    result = response.json()
    log("Received response from Ollama.", "success")
    return json.loads(result.get("choices")[0]["message"]["content"])

# Function to scrape movie details using Ollama
def scrape_movie_details(movie_url):
    log(f"Scraping movie details from {movie_url}...", "info")
    
    # Add headers to mimic a browser request
    headers = {
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36",
        "Accept-Language": "en-US,en;q=0.9",
        "Referer": BASE_URL
    }
    
    # Retry logic
    retries = 3
    for i in range(retries):
        response = requests.get(movie_url, headers=headers, timeout=10)
        if response.status_code == 200:
            log(f"Successfully fetched movie details page: {movie_url}", "success")
            break
        elif i < retries - 1:
            log(f"Retrying ({i + 1}/{retries}) after failure to fetch: {response.status_code}", "warning")
            time.sleep(2 ** i)
        else:
            log(f"Failed to fetch movie page: {movie_url} after {retries} retries.", "error")
            return None

    soup = BeautifulSoup(response.text, "html.parser")
    # page_content = soup.get_text()
    page_content = str(soup)
    log("Extracted page content, sending it to Ollama...", "info")
    movie_details = scrape_movie_details_2(page_content,xpaths=xpaths.X_PATHS)
    log(f"Successfully extracted details for movie: {movie_details.get('Title', 'N/A')}", "success")
    return movie_details

# Function to scrape movies from the base URL
def scrape_movies(base_url, max_movies):
    movies = []
    log(f"Starting to scrape movies. Target: {max_movies} movies.", "info")
    
    headers = {
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36",
        "Accept-Language": "en-US,en;q=0.9"
    }
    
    try:
        response = requests.get(base_url, headers=headers, timeout=10)
        if response.status_code != 200:
            log(f"Failed to fetch the base URL: {base_url} with status code {response.status_code}.", "error")
            return movies

        soup = BeautifulSoup(response.text, "html.parser")
        # Selector for movie links
        movie_links = soup.select('a.ipc-title-link-wrapper')
        log(f"Found {len(movie_links)} movie links on the page.", "info")
        
        for i, link in enumerate(movie_links):
            if len(movies) >= max_movies:
                break
            
            href = link.get("href")
            if not href:
                log(f"No href found for movie link at position {i}. Skipping.", "warning")
                continue

            movie_url = f"https://www.imdb.com{href}"  # Construct the full URL
            movie_details = scrape_movie_details(movie_url)
            if movie_details:
                movies.append(movie_details)
                log(f"Added movie: {movie_details['Title']}", "success")
        
        log(f"Scraped a total of {len(movies)} movies.", "success")
        return movies

    except requests.exceptions.RequestException as e:
        log(f"Error occurred during the GET request: {e}", "error")
        return movies

# Generate CSV and SQL files
def generate_files(movies):
    log("Generating output files...", "info")
    
    # Write to CSV
    with open("movies.csv", "w", newline="", encoding="utf-8") as csvfile:
        fieldnames = ["ID", "Title", "Duration", "Rating", "Language", "Country", "ReleaseYear", "Genres", "StoryLine", "Rated", "Director"]
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        writer.writeheader()
        writer.writerows(movies)
    log("CSV file generated: movies.csv", "success")
    
    # Write to SQL
    with open("insert_movies.sql", "w", encoding="utf-8") as sqlfile:
        for movie in movies:
            # Escape single quotes for MSSQL
            def escape(value):
                return value.replace("'", "''") if isinstance(value, str) else value

            # Handle nullable fields
            def nullable(value):
                return f"'{escape(value)}'" if value else "NULL"

            # Extract director's first and last name
            director_name_parts = movie.get("Director", "").split(" ")
            first_name = director_name_parts[0] if len(director_name_parts) > 0 else "N/A"
            last_name = " ".join(director_name_parts[1:]) if len(director_name_parts) > 1 else "N/A"

            sql = f"""
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = {nullable(movie.get("Title"))}
                AND ReleaseYear = {nullable(movie.get("ReleaseYear"))}
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    {nullable(movie.get("Title"))},
                    {nullable(movie.get("Duration"))},
                    {movie.get("Rating", "NULL")},
                    {nullable(movie.get("Language"))},
                    {nullable(movie.get("Country"))},
                    {nullable(movie.get("ReleaseYear"))},
                    {nullable(movie.get("Genres"))},
                    {nullable(movie.get("StoryLine"))},
                    {nullable(movie.get("Rated"))}
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = {nullable(first_name)}
                AND LastName = {nullable(last_name)}
                AND Country = {nullable(movie.get("Country"))}
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    {nullable(first_name)}, 
                    {nullable(last_name)},
                    {nullable(movie.get("Country"))}
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = {nullable(first_name)} 
                AND d.LastName = {nullable(last_name)} 
                AND m.Title = {nullable(movie.get("Title"))}
                AND m.ReleaseYear = {nullable(movie.get("ReleaseYear"))}
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = {nullable(first_name)} AND LastName = {nullable(last_name)}),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = {nullable(movie.get("Title"))} AND ReleaseYear = {nullable(movie.get("ReleaseYear"))})
                );
            END;
            """
            sqlfile.write(sql)

    log("SQL file generated: insert_movies.sql", "success")



# Main function
def main():
    log("Starting the movie scraper...", "info")
    movies = scrape_movies(BASE_URL, max_movies=NUM_MOVIES_TO_SCRAPE)
    if not movies:
        log("No movies were scraped. Exiting.", "error")
        return
    log("Scraping completed. Generating output files...", "info")
    generate_files(movies)
    log("Files generated successfully.", "success")

if __name__ == "__main__":
    main()
