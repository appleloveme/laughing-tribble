#!/bin/bash
# Run from root folder with: bash bash/env.sh

# check if conda is installed
if ! command -v conda &> /dev/null
then
    echo "The 'conda' command could not be found. Exiting..."
    exit
fi

# Configure conda env
read -rp "Enter environment name: " env_name
read -rp "Enter python version (recommended '3.9') " python_version

# Create conda env
echo "Init conda environment!!!"
conda create -y -n "$env_name" matplotlib pandas python="$python_version"

echo ""
echo "To activate this environment, use:"
echo "conda activate $env_name"
