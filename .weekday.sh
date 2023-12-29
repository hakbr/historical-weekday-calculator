#!/bin/bash

# Function to determine the weekday for a given date
get_weekday() {
    local input_date="$1"

    # Check if the date is in the correct format (YYYY-MM-DD)
    if ! [[ $input_date =~ ^[0-9]{4}-[0-9]{2}-[0-9]{2}$ ]]; then
        echo "Invalid date format. Please use YYYY-MM-DD."
        exit 1
    fi

    # Use the date command to get the weekday
    local weekday=$(date -d "$input_date" +"%A")

    echo "The weekday for $input_date is $weekday."
}

# Prompt the user to enter a date
read -p "Enter a date (YYYY-MM-DD): " user_date

# Call the function with the user's input
get_weekday "$user_date"
