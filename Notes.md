App Design Notes

Experience
    User greeted & asked for zip
    Zip is inserted into url to load webpage with relevant info
    Webpage is scraped for top 10 potted plants
    User sees list & asked to choose one for plant details

Classes
    CLI
    Scraper
        Uses zip obtained by CLI to scrape relevant search results
    Plant
        Takes scraped info and initializes instance of plant class