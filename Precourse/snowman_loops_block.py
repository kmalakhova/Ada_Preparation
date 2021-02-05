SNOWMAN_WORD = "snowman"

SNOWMAN_WRONG_GUESSES = 7

SNOWMAN_1 = '*   *   *  '
SNOWMAN_2 = ' *   _ *   '
SNOWMAN_3 = '   _[_]_ * '
SNOWMAN_4 = '  * (")    '
SNOWMAN_5 = '  \( : )/ *'
SNOWMAN_6 = '* (_ : _)  '
SNOWMAN_7 = '-----------'

def get_letter_from_user():
    valid_input = False
    user_input_string = None
    while not valid_input:
        user_input_string = input("Guess a letter: ")
        if not user_input_string.isalpha():
            print("You must input a letter!")
        elif len(user_input_string) > 1:
            print("You can only input one letter at a time!")
        else:
            valid_input = True

    return user_input_string

def snowman():
    correct_guesses = 0
    wrong_guesses = 0

    while correct_guesses != len(SNOWMAN_WORD) and wrong_guesses != SNOWMAN_WRONG_GUESSES:

        user_input = get_letter_from_user()

        if user_input in SNOWMAN_WORD:
            # print("You guessed a letter that's in the word!")
            correct_guesses += 1
        else:
            # print(f"The letter {user_input} is not in the word")
            wrong_guesses += 1

        print_snowman(wrong_guesses)

def print_snowman(wrong_guesses):

    for i in range(SNOWMAN_WRONG_GUESSES + 1 - wrong_guesses, SNOWMAN_WRONG_GUESSES + 1):
        if i == 1:
            print(SNOWMAN_1)
        elif i == 2:
            print(SNOWMAN_2)
        elif i == 3:
            print(SNOWMAN_3)
        elif i == 4:
            print(SNOWMAN_4)
        elif i == 5:
            print(SNOWMAN_5)
        elif i == 6:
            print(SNOWMAN_6)
        elif i == 7:
            print(SNOWMAN_7)

snowman()