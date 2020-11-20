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
echo "Please provide the first number:"
  read first_number
  echo "Please provide the second number:"
  read second_number
  echo "The difference of $first_number and $second_number is:"
  expr $first_number - $second_number
  ;;
  "Multiplication")
  echo "Please provide the first number:"
  read first_number
  echo "Please provide the second number:"
  read second_number
  echo "The product of $first_number and $second_number is:"
  expr $first_number '*' $second_number
  ;;
  "Exit")
  echo "Thank you for using calculator."
  exit 0
  ;;
  # If the selection does not match a supported operation, display an error message.
  *)
  echo "Sorry, this is not supported"
  echo "Please try again!"
  ;;
  esac
done