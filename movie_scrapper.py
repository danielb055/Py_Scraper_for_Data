import json
from typing import Any, Dict

from bs4 import BeautifulSoup
from lxml import etree



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


# Example usage:
if __name__ == "__main__":
    # Replace 'html_content' with actual HTML content of the IMDb movie page
    html_content = "<html>Your IMDb HTML content here</html>"
    movie_details = scrape_movie_details_2(html_content)
    print(movie_details)
