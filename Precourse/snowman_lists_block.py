from wonderwords import RandomWord

SNOWMAN_MAX_WORD_LENGTH = 8
SNOWMAN_MIN_WORD_LENGTH = 5

SNOWMAN_WRONG_GUESSES = 7

SNOWMAN_GRAPHIC = [
    '*   *   *  ',
    ' *   _ *   ',
    '   _[_]_ * ',
    '  * (")    ',
    '  \( : )/ *',
    '* (_ : _)  ',
    '-----------'
]

def get_letter_from_user(wrong_guesses_list, correct_guesses_list):
    valid_input = False
    user_input_string = None
    while not valid_input:
        user_input_string = input("Guess a letter: ")
        if not user_input_string.isalpha():
            print("You must input a letter!")
        elif len(user_input_string) > 1:
            print("You can only input one letter at a time!")
        # note to self: words with repeating letters
        elif user_input_string in wrong_guesses_list or user_input_string in corrsect_guesses_list:
            print("You have already guessed that letter!")
        else:
            valid_input = True
        
    return user_input_string

def snowman():
    r = RandomWord()
    snowman_word = r.word(word_min_length=SNOWMAN_MIN_WORD_LENGTH, word_max_length=SNOWMAN_MAX_WORD_LENGTH)
    print(f'The word was {snowman_word}.')
    wrong_guesses_list = []
    correct_guesses_list  = []

    while len(wrong_guesses_list) < SNOWMAN_WRONG_GUESSES and len(correct_guesses_list) != len(snowman_word): 
        user_input = get_letter_from_user(wrong_guesses_list, correct_guesses_list)
        if user_input in snowman_word:
            print("You guessed a letter that's in the word!")
            correct_guesses_list.append(user_input)
        else:
            print(f"The letter {user_input} is not in the word")
            wrong_guesses_list.append(user_input)
        print_snowman(len(wrong_guesses_list))

def print_snowman(wrong_guesses_list):
    for i in range(SNOWMAN_WRONG_GUESSES - wrong_guesses_list, SNOWMAN_WRONG_GUESSES):
        print(SNOWMAN_GRAPHIC[i])

snowman()