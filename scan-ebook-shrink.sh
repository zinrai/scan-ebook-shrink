#!/bin/bash

# Check for arguments
if [ $# -eq 0 ]; then
  echo "Usage: $0 input.pdf [input2.pdf ...]"
  exit 1
fi

# Process each PDF file
for input_file in "$@"; do
  # Check if file exists
  if [ ! -f "$input_file" ]; then
    echo "Error: File '$input_file' not found."
    continue
  fi
  
  # Get the base filename without extension
  filename=$(basename "$input_file")
  basename="${filename%.*}"
  
  # Generate output filename with 'ebook-' prefix
  output_file="ebook-${basename}.pdf"
  
  echo "Processing: '$input_file'"
  echo "Output to: '$output_file'"
  
  # Execute Ghostscript command and check its result directly
  if gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 \
     -dPDFSETTINGS=/ebook \
     -dNOPAUSE -dBATCH -dQUIET \
     -sOutputFile="$output_file" "$input_file"; then
    echo "Success: The file has been processed successfully."
  else
    echo "Error: An error occurred while processing the file."
  fi
  
  echo "----------------------------------------"
done
