# Image scraper

This shellscript scrapes all images, recursively, from the urls listed
in the sites.txt file.

It will be used in an art project by Stefan Baltensperger.

Usage:
  - Add urls to the sites.txt file like this
      http://www.yoursite.ch
    The HTTP:// part ist important!
  - Make the scraper.sh shell script executable:
      chmod +x scraper.sh
  - Run it like this:
      ./scraper.sh
