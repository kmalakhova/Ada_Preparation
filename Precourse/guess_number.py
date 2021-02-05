MAX_GUESSES = 5
RANGE_LOW = 0
RANGE_HIGH = 10

import random

def get_number_from_user():
  valid_input = False
  user_input = None
  while not valid_input:
    user_input_string = input("Guess the number: ")

    if user_input_string.isnumeric():
      user_input = int(user_input_string)
      valid_input = True
    else:
      print("You must input a number!")

  return user_input

def guess_the_number():
  random_number = random.randint(RANGE_LOW, RANGE_HIGH)

  waiting_for_correct_guess = True
  num_guesses = 0

  while (waiting_for_correct_guess and num_guesses != MAX_GUESSES):

    num_guesses += 1
    user_input = get_number_from_user()

    if user_input == random_number:
      print("You guessed the number!  Good job!")
      waiting_for_correct_guess = False
    elif user_input < RANGE_LOW or user_input > RANGE_HIGH:
      print("Your guess is out of bounds.")
      print(f"It must be between {RANGE_LOW} and {RANGE_HIGH}")
    elif user_input > random_number:
      print("Your guess is too high")
    elif user_input < random_number:
      print("Your guess is too low")
    
  if waiting_for_correct_guess:
    print(f"You ran out of guesses!  The correct answer was {random_number}.")

guess_the_number()