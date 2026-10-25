
#!/bin/bash

# Simple Interest Calculator

printf "Enter the principal amount: "
read -r principal

printf "Enter the annual rate of interest: "
read -r rate

printf "Enter the time period in years: "
read -r time

interest=$(awk -v p="$principal" -v r="$rate" -v t="$time" \
    'BEGIN { printf "%.2f", (p * r * t) / 100 }')

echo "Simple Interest: $interest"
