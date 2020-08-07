# JumpStart Live (JSL)
# Day 2

# Prompt for a number. 
# If the number is greater than 70, print PASSING; otherwise, print NOT PASSING.
print "Number please: "
num = gets.chomp.to_i
if num > 70
  puts "PASSING"
else
  puts "NOT PASSING"
end

# Prompt for a string. 
# If the string is equal to green, print GO, otherwise, print STOP.
print "\nString please: "
str = gets.chomp
if str == "green"
  puts "GO"
else 
  puts "STOP"
end

# Prompt for a number. 
# If the number is even, print EVEN, otherwise, print ODD.
print "\nNumber please: "
num = gets.chomp.to_f
if num % 2 == 0
  puts "EVEN"
else 
  puts "ODD"
end

# Prompt for a number. 
# If the number is evenly divisible by 5, print MULTIPLE OF 5, \ otherwise, print NOT A MULTIPLE OF 5.
print "\nNumber please: "
num = gets.chomp.to_f
if num % 5 == 0
  puts "MULTIPLE OF 5"
else 
  puts "NOT A MULTIPLE OF 5"
end

# Prompt for a number. 
# If the number is less than 10, print ONE DIGIT. 
# If the number is 100 or greater, print THREE DIGITS, otherwise print TWO DIGITS.
print "\nNumber please: "
num = gets.chomp.to_f
if num < 10
  puts "ONE DIGIT"
elsif num >= 100
  puts "THREE DIGITS"
else 
  puts "TWO DIGITS"
end

# Prompt for a jersey number. 
# If that number is 12, 71, or 80, 
# print That number is retired from the Seattle Seahawks!, 
# otherwise do nothing.
print "\nJersey number plz: "
num = gets.chomp.to_i
if num == 12 || num == 71 || num == 80
  puts "That number is retired from the Seattle Seahawks!"
end

# Prompt for a state. 
# If the state is Washington, Oregon, or Idaho, 
# print This state is in the PNW, 
# otherwise print You should move to the PNW; it’s great here!
print "\nEnter a state: "
state = gets.chomp.capitalize
if state == "Washington" || state == "Oregon" || state == "Idaho"
  puts "This state is in the PNW"
else 
  puts "You should move to the PNW; it’s great here!"
end

# Prompt for a one of the following: SHORT, TALL, GRANDE, VENTI. 
# Print out the number of ounces that drink includes (8, 12, 16, 20 respectively).
print "\nChoose SHORT, TALL, GRANDE, VENTI: "
ans = gets.chomp.upcase
if ans == "SHORT"
  puts "8 oz"
elsif ans == "TALL"
  puts "12 oz"
elsif ans == "GRANDE"
  puts "GRANDE is 16 oz"
elsif ans == "VENTI"
  puts "VENTI is 20 oz"
else 
  puts "It looks like you don't want to play"
end
