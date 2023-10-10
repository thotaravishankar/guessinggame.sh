#!/bin/bash

# Get the number of files in the current directory
num_files=$(ls -l | wc -l)

# Ask the user to guess the number of files
echo "How many files are in the current directory?"
read user_guess

# Loop until the user guesses correctly
while [[ $user_guess -ne $num_files ]]; do
  if [[ $user_guess -lt $num_files ]]; then
    echo "Your guess is too low."
  else
    echo "Your guess is too high."
  fi

  echo "Try again."
  read user_guess
done

# Congratulate the user for guessing correctly
echo "Congratulations! You guessed correctly!"
