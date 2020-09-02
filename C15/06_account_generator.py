print("This program generates student information.\n")

# an array that contains student names
students = []
# an array that stores student ID numbers
ids = []
# an array that contains student email addresses
emails = []

# ask the user to enter in 5 student names (first and last name) 
# store those values in the names array in all lowercase
student_count = 2
while len(students) < student_count:
  prompt = "Enter student first and last name: "
  student = input(prompt).lower
  students.append(student)

# generate random student ID numbers from 111111 to 999999 
# put these values to the student ID number array
import random 
while len(ids) < student_count:
  id = random.randrange(1, 3)
  # make sure none of the IDs are duplicates
  if id in ids:
    continue
  else:
    ids.append(id)

