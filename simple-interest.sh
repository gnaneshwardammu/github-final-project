
#!/bin/bash

# This script calculates simple interest given principal,
# annual rate of interest and time period in years.

# Do not use this in production. Sample purpose only.

# Input:
# p = principal amount
# t = time period in years
# r = annual rate of interest

echo "Enter the principal:"
read -r p

echo "Enter time period in years:"
read -r t

echo "Enter rate of interest per year:"
read -r r

s=$(echo "scale=2; $p * $t * $r / 100" | bc)

echo "The simple interest is:"
echo "$s"
