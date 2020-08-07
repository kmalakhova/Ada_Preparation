# Ask  user to input a positive integer value 3 times
print "Enter a positive integer: "
user_num1 = gets.chomp.to_i
puts "#{user_num1} is an #{user_num1.class}." 

print "\nEnter another positive integer: "
user_num2 = gets.chomp.to_i
puts "#{user_num2} is an #{user_num2.class} as well."

print "\nEnter a positive integer: "
user_num3 = gets.chomp.to_i
puts "Your third enteren number #{user_num3} is an #{user_num3.class}." 

puts "\nTwenty added to the numbers you entered gives us #{user_num1+20}, #{user_num2+20} and #{user_num3+20}."