# JumpStart: Lesson 13
# Assignment: Student Account Generator Continued

puts "This program generates student information.\n\n"

# an array that contains student data
student_data = []

# ask the user to enter in 5 student names 
# add each student's info to hash, that contains student's personal information

student_count = 2

student_count.times do 
  # prompt user for name 
  print "Enter student first and last name: " 
  student = Hash.new
  name = gets.chomp.upcase.strip   

  # make sure both first and last name entered
  if name.size == 1
    puts "  You Ain't Beyonce!"
    print "  Enter your first and last name: "
    name = gets.chomp.upcase
  end
  student[:name] = name
  student_data << student

  # generate random student ID numbers from 111111 to 999999 
  id = rand(111111..999999)
  # make sure none of the IDs are duplicates
  if !student.has_value?(id)
    student[:id] = id
  else 
    id = rand(111111..999999)
  end

  # generate student email addresses in the format: # (first inital)+(last name)+(last 3 digits of student ID number)@adadevelopersacademy.org
  student_name = name.split(" ")
  # account for first names with space
  if student_name.size > 2
    first_init = student_name[0][0..1]
  else
    first_init = student_name[0][0]
  end

  last_name = student_name[-1] 
  email = first_init << last_name << id.to_s.slice(-3..-1) << "@adadevelopersacademy.org"
  student[:email] = email

end

# print out all the student names, ID numbers, and email addresses in parallel
puts "\n"
student_data.each do |student|
  puts "Student: #{student[:name]}, ID: #{student[:id]}, E-mail: #{student[:email]}"
end
