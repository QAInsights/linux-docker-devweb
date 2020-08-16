#!/bin/bash
# Printing present working directory
echo "Current Working Directory is: " $PWD
# Printing the arguments passed
echo "List of arguments passed: " $@
# Executing the DevWeb script
echo "Starting the execution ..."
./DevWeb $@
echo "Execution has been completed."