#!/bin/bash

# Specify the base URL for the data files
BASE_URL="https://raw.githubusercontent.com/JeffSackmann/tennis_atp/master/"

# Loop through the years from 1973 to 2023
for year in $(seq 1968 2023); do
    # Construct the URL for the data file of the current year
    FILE_URL="${BASE_URL}atp_matches_${year}.csv"

    # Download the file using wget
    wget "$FILE_URL"

    # Print a message indicating the download status
    if [ $? -eq 0 ]; then
        echo "Downloaded $FILE_URL"
    else
        echo "Failed to download $FILE_URL"
    fi
done
