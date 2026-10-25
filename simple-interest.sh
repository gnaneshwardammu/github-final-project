
#!/bin/bash

# Simple Interest Calculator

echo "Enter the principal:"
read -r P

echo "Enter the annual rate of interest:"
read -r R

echo "Enter the time period (in years):"
read -r T

# Calculate simple interest
SI=$(awk -v p="$P" -v r="$R" -v t="$T" \
    'BEGIN { printf "%.2f", (p * r * t) / 100 }')

echo "Simple Interest = $SI"
