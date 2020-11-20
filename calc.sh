#! /usr/bin/env bash
# An interactive calculator program
# When the program is first loaded, display a greeting to the user.
echo "Welcome to calculator program."
# Keep prompting the user for input until they exit the program.
while true; do
# Then, display a menu that outlines the possible operations:
  echo " Please select one of the following."
    # Add
    echo "Addition"
    # Subtract
    echo "Subtract"
    # Multiplication
    echo "Multiplication"
    # Exit
    echo "Exit"
  # Then, capture the user selection.
  read selection
  case $selection in
  # If the selection matches a supported operation, execute the operation.
  "Addition")
  echo "Please provide the first number:"
  read first_number
  echo "Please provide the second number:"
  read second_number
  echo "The sum of $first_number and $second_number is:"
  expr $first_number + $second_number
  ;;
  "Subtraction")