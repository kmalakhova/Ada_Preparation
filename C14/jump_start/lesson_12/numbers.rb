# JumpStart: Lesson 12
# Numbers problem assignment v4

# ask the user for the count of numbers
print "Let's play a numbers game. \r
How many numbers would you like to enter? \r> "

# accept user input
# user can enter decimal value -> accept and round up
count = gets.chomp.to_f.round

# make sure entered value is valid
# if not, give user 3 attempts to enter a valid number
attempt = 1
until count > 1 || attempt == 4
  puts "\nTo play the game, enter a number, which is greater than one."
  print "Or enter 'Q' to exit.\r> "
  user_decision = gets.chomp.capitalize

  if user_decision == "Q"
    puts "\nUser is willing to exit the game."
    break
  end

  count = user_decision.to_f.round
    attempt += 1
end

# array that stores the numbers the user inputs
numbers_holder = Array.new

# prompt user for integer
# verify that the user's input is an integer 
# add user_num to numbers_holder array
num_check = Proc.new {
  user_num = Integer(gets) rescue false 

  if user_num.class != Integer
    puts "Oops! That's not an integer.\rTry again.\r> "
  end

  numbers_holder << user_num
}

# adjust -st, -nd, -rd
# call num_check proc
i = 1
while i <= count
  if i == 1
    print "\nEnter the #{i}st integer > " 
    num_check.call
  elsif i == 2 || i == 22
    print "Enter the #{i}nd integer > " 
    num_check.call
  elsif i == 3
    print "Enter the #{i}rd integer > " 
    num_check.call
  else 
    print "Enter the #{i}th integer > " 
    num_check.call
  end

  i += 1
end

# compare the values in numbers_holder array to the value at the last index
last_num = numbers_holder[-1] 
puts "\nComparing to the last value entered, #{last_num}, here are the observations:\n\n"

n = numbers_holder.length
for i in 0..n-2
  num = numbers_holder[i]
  if num < last_num
    print "The value at index #{i}, #{num} is less than "
  elsif num > last_num
    print "The value at index #{i}, #{num} is greater than "
  else num == last_num
    print "The value at index #{i}, #{num} is equal to "
  end
  puts "value at the last index, #{numbers_holder.last}."
end

puts "The last number with index #{numbers_holder.length-1} is #{last_num}.\n\n"

# determine min, max, avg values in numbers_holder array
puts "The minimum value in the array is #{numbers_holder.min}."
puts "The maximum value in the array is #{numbers_holder.max}."

avg_num = numbers_holder.inject{ |sum, el| sum + el }.to_f / numbers_holder.length
puts "The average of all the elements in the array is #{avg_num}"
