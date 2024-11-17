import requests
from bs4 import BeautifulSoup
import json
import csv
from colorama import Fore, Style
import time

# Set the number of movies to scrape
NUM_MOVIES_TO_SCRAPE = 10  # Change this value to the number of movies you want

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
    You are a movie details extractor. Analyze the provided webpage content and extract the following information as JSON:
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
    data = {"model": "llama3.2", "messages": [{"role": "user", "content": prompt}]}
    
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
    page_content = soup.get_text()
    log("Extracted page content, sending it to Ollama...", "info")
    movie_details = query_ollama(page_content)
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
                log(f"Added movie: {movie_details['Title']} (ID: {movie_details['ID']})", "success")
        
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
            sql = f"""
            INSERT INTO Movies (Id, Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
            VALUES (
                '{movie["ID"]}', '{movie["Title"].replace("'", "''")}', '{movie["Duration"]}',
                '{movie["Rating"]}', '{movie["Language"].replace("'", "''")}', '{movie["Country"].replace("'", "''")}',
                '{movie["ReleaseYear"]}', '{movie["Genres"].replace("'", "''")}', '{movie["StoryLine"].replace("'", "''")}',
                '{movie["Rated"]}'
            );

            INSERT INTO Directors (FirstName, LastName, Country)
            VALUES (
                '{movie["Director"].split(" ")[0]}', 
                '{' '.join(movie["Director"].split(" ")[1:]) if len(movie["Director"].split(" ")) > 1 else "N/A"}',
                '{movie["Country"].replace("'", "''")}'
            );

            INSERT INTO Director_Movie (DirectorId, MovieId)
            VALUES (
                (SELECT Id FROM Directors WHERE FirstName='{movie["Director"].split(" ")[0]}' LIMIT 1),
                '{movie["ID"]}'
            );
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
