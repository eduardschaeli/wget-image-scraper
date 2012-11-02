#!/bin/sh
for line in `cat sites.txt`; do
  # replace http://
  stripped_url=`echo $line| cut -c8-`
  target_folder=$stripped_url

  echo $stripped_url
  mkdir $stripped_url
  echo ""
  echo ""
  echo ""
  echo "Scraping $stripped_url"
  echo "-----------------------------------"
  echo "> creating folder.."
  mkdir $stripped_url
  echo "> scraping $stripped_url"
  wget -e robots=off --recursive -p \
    -nd -nc -np --accept jpg,jpeg,png,gif -P $target_folder --wait 0.5 $stripped_url
  echo ""
  echo ""
  echo "> Finished scraping $stripped_url"
done
