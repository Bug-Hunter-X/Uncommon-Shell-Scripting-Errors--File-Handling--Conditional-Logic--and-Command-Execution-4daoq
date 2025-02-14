#!/bin/bash

# Improved script with robust error handling

file_to_process="my_file.txt"

if [[ -f "$file_to_process" ]]; then
  echo "Processing file: $file_to_process"
  # Use a safer way to check for errors in commands inside the if block
  if cat "$file_to_process" > /dev/null 2>&1; then
    echo "File processing successful"
  else
    echo "Error: Could not process file"
    exit 1 # Exit with a non-zero code to indicate error
  fi
else
  echo "Error: File not found"
  exit 1
fi

# Improved command execution with error checking
echo "Executing a command..."
if some_command; then
  echo "Command succeeded"
else
  echo "Command failed: "
  echo "$?"
  exit 1
fi

# Alternative, more concise approach using command substitution and conditional logic:
command_output=$(some_command 2>&1)

if [ $? -eq 0 ]; then
  echo "Command succeeded: $command_output"
else
  echo "Command failed: $command_output"
  exit 1
fi

# Using functions for better organization and reusability
process_file() {
  local file=$1
  if [[ -f "$file" ]]; then
    cat "$file"
    return 0 # Return 0 for success
  else
    echo "Error: File '$file' not found"
    return 1 # Return 1 for failure
  fi
}

process_file "my_file.txt"
status=$?
if [[ $status -ne 0 ]]; then
  echo "Error occurred while processing file. Exit code: $status"
fi