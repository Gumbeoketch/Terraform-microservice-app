#!/bin/bash

# Install Checkov if not installed
if ! command -v checkov &> /dev/null
then
    echo "Checkov is not installed. Installing..."
    pip3 install checkov
fi

# Run Checkov scan on the current directory
echo "Running Checkov security scan on Terraform files..."
checkov --directory . --outouy-file tf_scan.json

# Check if Checkov exited with non-zero (indicating failures)
if [[ $? -ne 0 ]]; then
    echo "misconfiguration or vulnerabilities found. Fix them before proceeding."
    exit 1
else
    echo "No security vulnerabilities found."
fi
