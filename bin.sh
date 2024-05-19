#!/bin/bash

# Check if a filename is provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

filename=$1

# Check if the file exists
if [ ! -f "$filename" ]; then
    echo "File not found: $filename"
    exit 1
fi

# Check if python is installed
if ! command -v python &> /dev/null; then
    echo "Python is required to run this script."
    exit 1
fi

# Start the HTTP server
echo "Hosting $filename on http://localhost:8000"
python -m SimpleHTTPServer
