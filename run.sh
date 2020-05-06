#!/bin/bash

# Printing present working directory
echo "Current Working Directory is: " $PWD

# Printing the arguments passed
echo "List of arguements passed: " $@

# Executing the DevWeb script
./DevWeb $@

# Printing the completion message
echo "Execution has been completed."