import json
import time
from typing import Any, Dict

from bs4 import BeautifulSoup
from lxml import etree
import requests

from coded_logger import log
from settings import BASE_URL
import xpaths



def scrape_movie_details_2(page_content: str, xpaths: Dict[str, str]) -> Dict[str, Any]:
    """
    Scrape and flatten movie details from page content.
    
    :param page_content: HTML content of the page as a string.
    :param xpaths: A dictionary containing XPaths for each movie detail field.
    :return: A dictionary containing scraped movie details with all values flattened.
    """
    parser = etree.HTMLParser()
    tree = etree.fromstring(page_content, parser=parser)
    movie_details = {}

    for key, xpath in xpaths.items():
        try:
            elements = tree.xpath(xpath)
            if isinstance(elements, list):
                # Flatten list or object
                flattened_value = ", ".join(
                    elem.text.strip() if isinstance(elem, etree._Element) and elem.text else str(elem)
                    for elem in elements
                )
            else:
                flattened_value = elements if elements else "N/A"
            movie_details[key] = flattened_value if flattened_value else "N/A"
        except Exception as e:
            movie_details[key] = "N/A"

    return movie_details


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


# Example usage:
if __name__ == "__main__":
    # Replace 'html_content' with actual HTML content of the IMDb movie page
    html_content = "<html>Your IMDb HTML content here</html>"
    movie_details = scrape_movie_details_2(html_content)
    print(movie_details)
