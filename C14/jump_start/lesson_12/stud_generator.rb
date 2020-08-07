# JumpStart: Lesson 12
# Assignment: Student Account Generator

puts "This program generates student information.\n\n"
# an array that contains student names
students = []
# an array that stores student ID numbers
ids = []
# an array that contains student email addresses
emails = []

# ask the user to enter in 5 student names (first and last name) 
# store those values in the names array in all uppercase
student_count = 2
student_count.times do 
  print "Enter student first and last name: " 
  name = gets.chomp.upcase
  students << name
end

# generate random student ID numbers from 111111 to 999999  
# put these values to the student ID number array
until ids.size == student_count
  id = rand(111111..999999)
  # make sure none of the IDs are duplicates
  if !ids.include?(id)
    ids << id
  end
end

# generate student email addresses in the format: # (first inital)+(last name)+(last 3 digits of student ID number)@adadevelopersacademy.org
student_count.times do
  # i is a student's index in array
  i = 0
  students.each do |name|
    student_name = name.split(" ")

    # account for first names with space
    if student_name.size > 2
      first_init = student_name[0][0..1]
    else
      first_init = student_name[0][0]
    end

    last_name = student_name[-1] 
    email = first_init << last_name << ids[i].to_s.slice(-3..-1) << "@adadevelopersacademy.org"
    emails << email
    i += 1
  end
end

# print out all the student names, ID numbers, and email addresses in parallel
puts "\n"
student_count.times do |i|
  puts "Student: #{students[i]}, ID: #{ids[i]}, E-mail: #{emails[i]}"
end
