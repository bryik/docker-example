import requests
from bs4 import BeautifulSoup


def main():
    """Uses Requests to fetch a page and BeautifulSoup to parse out the body.
    The body is then printed."""
    r = requests.get("http://www.example.com")
    soup = BeautifulSoup(r.text, "html.parser")
    print(soup.body)


if __name__ == "__main__":
    main()

