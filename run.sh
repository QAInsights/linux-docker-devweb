#!/bin/bash

echo "Current Working Directory is: " $PWD
echo "List of arguements passed: " $@
./DevWeb $@
echo "Execution has been completed."