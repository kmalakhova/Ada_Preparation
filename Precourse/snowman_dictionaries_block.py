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
        print('')
        user_input_string = input('Guess a letter: ')
        if not user_input_string.isalpha():
            print('You must input a letter!')
        elif len(user_input_string) > 1:
            print('You can only input one letter at a time!')
        elif user_input_string in wrong_guesses_list or user_input_string in correct_guesses_list:
            print('You have already guessed that letter!')
        else:
            valid_input = True
        
    return user_input_string

def snowman():
    r = RandomWord()
    snowman_word = r.word(word_min_length=SNOWMAN_MIN_WORD_LENGTH, word_max_length=SNOWMAN_MAX_WORD_LENGTH)
    # print(f'debug info: {snowman_word}') # --- DELETE LATER ---
    snowman_list = build_word_list(snowman_word)
    correct_guesses_list = []
    wrong_guesses_list = []
    all_guessed = False
    print_word_list(snowman_list)

    while len(wrong_guesses_list) < SNOWMAN_WRONG_GUESSES and not all_guessed:
        user_input = get_letter_from_user(correct_guesses_list, wrong_guesses_list)
        if user_input in snowman_word:
            print('You guessed a letter that\'s in the word!')
            correct_guesses_list.append(user_input)
            all_guessed = update_and_check_word_list(snowman_list, user_input)
        else:
            print(f'The letter {user_input} is not in the word')
            wrong_guesses_list.append(user_input)
        print('')

        print_snowman(len(wrong_guesses_list))
        print_word_list(snowman_list)
        print('Wrong guesses: ' + ' '.join(wrong_guesses_list))

    if all_guessed:
        print('Congratulations, you won the game!')
    else:
        print(f'Hey guess what? You just lost the game. \nThe word was {snowman_word}')

def build_word_list(word):
    word_list = []
    for letter in word:
        letter_dict = {'letter': letter, 'guessed': False}
        word_list.append(letter_dict)
    return word_list

def print_word_list(word_list):
    output_string = ''
    print('')
    for elem in word_list:
        if elem['guessed']:
            output_string += elem['letter']
        else:
            output_string += '_'
        output_string += ' '
    print(output_string)

def print_snowman(wrong_guesses_list):
    for i in range(SNOWMAN_WRONG_GUESSES - wrong_guesses_list, SNOWMAN_WRONG_GUESSES):
        print(SNOWMAN_GRAPHIC[i])

def update_and_check_word_list(snowman_list, user_input):
    all_guessed = True
    for elem in snowman_list:
        if elem['letter'] == user_input:
            elem['guessed'] = True
        
    for elem in snowman_list:
        if elem['guessed'] == False:
            all_guessed = False
    
    return all_guessed

snowman()
