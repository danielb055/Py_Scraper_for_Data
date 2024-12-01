import time
from typing import Any, Dict

from bs4 import BeautifulSoup
from lxml import etree
from selenium import webdriver
from selenium.webdriver.chrome.service import Service

from coded_logger import log
from movie_scrapper import scrape_movie_details, scrape_movie_details_2


# Setup Selenium driver
# Setup Selenium driver
def setup_driver():
    options = webdriver.ChromeOptions()
    # options.add_argument("--headless")  # Run browser in headless mode (no UI)
    options.add_argument("--disable-gpu")
    options.add_argument("--no-sandbox")
    options.add_argument("--disable-dev-shm-usage")
    driver = webdriver.Chrome(service=Service("./chromedriver.exe"), options=options)
    return driver

# Scrape movies with Selenium and process content with scrape_movie_details_2
def scrape_movies_with_scroll(base_url, max_movies, xpaths: Dict[str, str]):
    driver = setup_driver()
    driver.get(base_url)
    log(f"Opening URL: {base_url}", "info")

    movies = []
    found_movies_count = 0
    last_height = driver.execute_script("return document.body.scrollHeight")
    scroll_pause_time = 0  # Time to wait after scrolling

    while found_movies_count < max_movies:
        # Scroll to the bottom of the page
        driver.execute_script("window.scrollTo(0, document.body.scrollHeight);")
        # time.sleep(scroll_pause_time)  # Wait for new content to load

        # Get page source and parse with BeautifulSoup
        soup = BeautifulSoup(driver.page_source, "html.parser")
        movie_links = soup.select('a.ipc-title-link-wrapper')  # Selector for movie links
        
        found_movies_count = len(movie_links)
        
        log(f"Found {len(movie_links)} movie links so far.", "info")

    for link in movie_links[len(movies):]:  # Process only new links
        if len(movies) >= max_movies:
            break

        href = link.get("href")
        if not href:
            log("No href found for a movie link. Skipping.", "warning")
            continue

        # Fetch movie details page
        movie_url = f"https://www.imdb.com{href}"
        driver.get(movie_url)  # Navigate to the movie page
        time.sleep(2)  # Wait for page to load completely

        # Process the movie page content
        page_content = driver.page_source  # Get the HTML content
        movie_details = scrape_movie_details_2(page_content, xpaths=xpaths)
        if movie_details:
            movies.append(movie_details)
            log(f"Added movie: {movie_details.get('Title', 'N/A')}", "success")

        # Check if we've reached the bottom of the page
        new_height = driver.execute_script("return document.body.scrollHeight")
        if new_height == last_height:
            log("No more content to load. Stopping.", "warning")
            break
        last_height = new_height

    driver.quit()
    log(f"Scraped a total of {len(movies)} movies.", "success")
    return movies