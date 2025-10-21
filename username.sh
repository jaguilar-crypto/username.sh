#!/bin/bash
# username.sh - Check if a username meets the specified rules

echo "=============================================="
echo "USERNAME RULES:"
echo "1) Only lowercase letters, digits, and underscores are allowed."
echo "2) Must start with a lowercase letter."
echo "3) Must be between 3 and 12 characters long."
echo "=============================================="

while true; do
    # Prompt user to type a username
    read -r -p "Enter a potential username: " username

    if [[ $username =~ ^[a-z][a-z0-9_]{2,11}$ ]]; then
        echo "Thank you! '$username' is a valid username."
        break
    else
        echo "Invalid username. Please try again."
        echo "(Remember: lowercase letters, digits, underscore; starts with a letter; 3–12 chars total.)"
    fi
done
