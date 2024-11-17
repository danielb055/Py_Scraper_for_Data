import requests
from bs4 import BeautifulSoup
import json
import csv
from colorama import Fore, Style

# Set the number of movies to scrape
NUM_MOVIES_TO_SCRAPE = 1  # Change this value to the number of movies you want

# Define the target URL
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
    response = requests.get(movie_url)
    if response.status_code != 200:
        log(f"Failed to fetch the movie page: {movie_url}", "error")
        return None

    soup = BeautifulSoup(response.text, "html.parser")
    page_content = soup.get_text()
    log("Extracted page content, sending it to Ollama...", "info")
    movie_details = query_ollama(page_content)
    log(f"Successfully extracted details for movie: {movie_details.get('Title', 'N/A')}", "success")
    return movie_details

# Function to scrape movies starting from the base URL
def scrape_movies(base_url, max_movies):
    movies = []
    page = 1
    log(f"Starting to scrape movies. Target: {max_movies} movies.", "info")
    while len(movies) < max_movies:
        log(f"Scraping movie list from page {page}...", "info")
        response = requests.get(f"{base_url}/movies?page={page}")
        if response.status_code != 200:
            log(f"Failed to fetch movie list from page {page}.", "error")
            break
        
        soup = BeautifulSoup(response.text, "html.parser")
        movie_links = soup.select(".movie-link")  # Replace '.movie-link' with the actual selector for movie titles
        if not movie_links:
            log(f"No movie links found on page {page}.", "error")
            break
        
        log(f"Found {len(movie_links)} movie links on page {page}.", "info")
        for link in movie_links:
            movie_url = f"{BASE_URL}{link['href']}"
            movie_details = scrape_movie_details(movie_url)
            if movie_details:
                movies.append(movie_details)
                log(f"Added movie: {movie_details['Title']} (ID: {movie_details['ID']})", "success")
            if len(movies) >= max_movies:
                break
        page += 1
    log(f"Scraped a total of {len(movies)} movies.", "success")
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