import requests  # Importing the requests library to make HTTP requests
from bs4 import BeautifulSoup  # Importing BeautifulSoup for parsing HTML content
import csv  # Importing the csv module for reading and writing CSV files

urls = [
    "https://<url>.com/",
    "https://<url>.com/about-us/",
    "https://<url>.com/industries/",
    # add the rest of your urls here
]

with open('output.csv', 'w', newline='') as file:
    writer = csv.writer(file)  # Creating a CSV writer object
    writer.writerow(["URL", "Text"])  # Writing the column headers to the CSV file

    for url in urls:
        response = requests.get(url)  # Sending a GET request to the specified URL
        soup = BeautifulSoup(response.text, 'html.parser')  # Parsing the HTML content using BeautifulSoup
        
        # remove script and style elements
        for script in soup(["script", "style"]):  # Removing script and style elements from the HTML content
            script.decompose()

        text = soup.get_text()  # Extracting the text content from the HTML
        # break into lines and remove leading and trailing space on each
        lines = (line.strip() for line in text.splitlines())  # Splitting the text into individual lines and removing leading/trailing spaces
        # break multi-headlines into a line each
        chunks = (phrase.strip() for line in lines for phrase in line.split("  "))  # Splitting multi-headlines into a line each and removing leading/trailing spaces
        # drop blank lines
        text = '\n'.join(chunk for chunk in chunks if chunk)  # Joining the non-blank lines together with a newline separator
        
        writer.writerow([url, text])  # Writing the URL and extracted text to the CSV file
