#!/bin/bash

# Part 1: Pre-Initialization Script
echo "Part 1: Pre-Initialization"
echo "--------------------------"

# Check and install Azure CLI if not installed
if ! command -v az &> /dev/null; then
    echo "Installing Azure CLI..."
    sudo apt install -y azure-cli
    if [ $? -eq 0 ]; then
        echo "Azure CLI installed successfully."
    else
        echo "Error: Failed to install Azure CLI."
        exit 1
    fi
else
    echo "Azure CLI is already installed."
fi

# Check and install Docker if not installed
if ! command -v docker &> /dev/null; then
    echo "Installing Docker..."
    sudo apt install -y docker.io
    sudo systemctl enable docker
    sudo systemctl start docker
    if [ $? -eq 0 ]; then
        echo "Docker installed successfully."
    else
        echo "Error: Failed to install Docker."
        exit 1
    fi
else
    echo "Docker is already installed."
fi

# Check and install Java if not installed
if ! command -v java &> /dev/null; then
    echo "Installing Java..."
    sudo apt install -y default-jdk
    if [ $? -eq 0 ]; then
        echo "Java installed successfully."
    else
        echo "Error: Failed to install Java."
        exit 1
    fi
else
    echo "Java is already installed."
fi

# Check and install Gradle if not installed
if ! command -v gradle &> /dev/null; then
    echo "Installing Gradle..."
    sudo apt install -y gradle
    if [ $? -eq 0 ]; then
        echo "Gradle installed successfully."
    else
        echo "Error: Failed to install Gradle."
        exit 1
    fi
else
    echo "Gradle is already installed."
fi

# Continue with Docker configuration
sudo usermod -aG docker $USER
sudo systemctl enable docker
sudo systemctl start docker
echo "Pre-Initialization completed successfully."
