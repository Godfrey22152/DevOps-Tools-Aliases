#!/bin/bash

echo "Setting up DevOps Aliases..."

# Variable to track if any aliases were added
aliases_added=false

# Loop through all alias scripts in the aliases/ directory
for script in aliases/*.sh; do
    echo "Executing $script..."
    output=$(source "$script")  # Capture the output of the script
    echo "$output"

    # Check if the script added new aliases
    if [[ "$output" != *"already exist"* ]]; then
        aliases_added=true
    fi

done

# Print the appropriate message based on whether any aliases were added
if [ "$aliases_added" = true ]; then
    echo "All new aliases have been added successfully!"
else
    echo "No new aliases were added. All aliases already exist in ~/.bashrc."
fi
