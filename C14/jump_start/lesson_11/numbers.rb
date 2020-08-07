# JumpStart: Lesson 11
# Loops and Iterators
# Numbers Problem v3

# ask the user for the count of numbers
print "Let's play a numbers game. \r
How many numbers would you like to enter? > "

# accept user input
# round up decimal value
count = gets.chomp.to_f.round

# make sure entered value is valid
# if not, give user 3 attempts to change decision
attempt = 1
until count > 1 || attempt == 4
  puts "\nTo play the game, enter a number, \rwhich is greater than one."
  print "Or enter 'Q' to exit. > "
  user_decision = gets.chomp.capitalize
  if user_decision == "Q"
    puts "\nUser is willing to exit the game."
    break
  end
  count = user_decision.to_f.round
  attempt += 1
end

# prompt user for input 
# decide whether number is odd or even
def even_odd_proc()
  user_num = gets.chomp.to_f.round
  if user_num % 3 == 0
    puts "#{user_num} is divisible by 3.\n\n"
  else 
    puts "#{user_num} is not divisible by 3.\n\n"
  end
end

# adjust -st, -nd, -rd
def enter_int (count)
  i = 1
  while i <= count
    if i == 1
      print "\nEnter the #{i}st integer > " 
      even_odd_proc()
    elsif i == 2 || i == 22
      print "Enter the #{i}nd integer > " 
      even_odd_proc()
    elsif i == 3
      print "Enter the #{i}rd integer > " 
      even_odd_proc()
    else 
      print "Enter the #{i}th integer > " 
      even_odd_proc()
    end

    i += 1
  end
end

enter_int (count)