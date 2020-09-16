# list to store all the parts of speech
parts_of_speech = [
  '1st adjective', 
  '1st noun',
  '1st verb, past tense',
  '1st adverb',
  '2nd adjective',
  '2nd noun',
  '3rd noun',
  '3rd adjective',
  '1st verb',
  '2nd adverb',
  '2nd verb, past tense',
  '4th adjective']

# empty dictionary to store user input
parts_of_speech_and_words = {}

# loop to prompt the user for input
for part in parts_of_speech:
  word = input(f'Please enter {part}: ')
  parts_of_speech_and_words[part] = word

# print madlib
print(f"Today I went to the zoo. \
I saw a(n) {parts_of_speech_and_words['1st adjective']} {parts_of_speech_and_words['1st noun']} jumping up and down in its tree. \
He {parts_of_speech_and_words['1st verb, past tense']} {parts_of_speech_and_words['1st adverb']} \
through the large tunnel that led to its {parts_of_speech_and_words['2nd adjective']} {parts_of_speech_and_words['2nd noun']}. \
I got some peanuts and passed them through the cage to a gigantic gray {parts_of_speech_and_words['3rd noun']} \
towering above my head. Feeding that animal made me hungry. \
I went to get a {parts_of_speech_and_words['3rd adjective']} scoop of ice cream. It filled my stomach. \
Afterwards I had to {parts_of_speech_and_words['1st verb']} {parts_of_speech_and_words['2nd adverb']} \
to catch our bus. When I got home I \
{parts_of_speech_and_words['2nd verb, past tense']} \
my mom for a {parts_of_speech_and_words['4th adjective']} day at the zoo.") 
