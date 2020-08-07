# JumpStart: Lesson 13
# Numbers problem assignment v5

# Create a hash.
# Add one key-value pair in the hash. 
# The key should be :random_numbers. 
# The value should be an array of five randomly generated integers between 12 and 21, both inclusive.

first_hash = Hash.new()

count = 5

random_nums = []
count.times do
  random_nums.push(rand(12..21))
end

first_hash[:random_numbers] = random_nums

# Create another key-value pair in the hash. 
# The key should be :user_numbers. 
# The value should be an array of five positive integers that the program receives as user input, 
# also in the range of 12 and 21, both inclusive.

# ask the user for the count of numbers
puts "Please provide five integer values between 12 and 21, both inclusive.\n\n"

# make sure entered value is valid
def num_valid(user_num)
  until user_num >= 12 && user_num <= 21 
    print "Enter integer value between 12 and 21: "
    user_num = gets.chomp.to_i
  end
end

  
user_nums = []
i = 1
count.times do 
  print "What's number #{i}: "
  user_num = gets.chomp.to_i

  # make sure entered value is valid
  num_valid(user_num)

  user_nums << user_num
  i += 1
end

first_hash[:user_numbers] = user_nums

# Create a second hash.
second_hash = Hash.new()
# scheme:
# second_hash[:user_num] = {
#  random_count: count, 
#  user_count: count
# }

# The keys in this hash are the numbers entered by the user
# The value holds information of the count of times that the number in key was provided by the user. 
user_nums.each do |num|
  number = num.to_s.to_sym

  if second_hash.key?(number)
    if second_hash[number].key?(:user_count)
      second_hash[number][:user_count] += 1
    else
      second_hash[number][:user_count] = 1
    end
  else
    second_hash[number] = {user_count: 1}
  end
end

# Add the value random_count that holds information of the count of times 
# that the number in key was generated randomly by the program.
random_nums.each do |num|
  number = num.to_s.to_sym

  if second_hash.key?(number)
    if second_hash[number].key?(:random_count)
      second_hash[number][:random_count] += 1
    else
      second_hash[number][:random_count] = 1
    end
  else
    second_hash[number] = {random_count: 1}
  end
end

count.times do
  print "\nGive me a number you want information about: "
  user_num = gets.chomp.to_i
  num_valid(user_num)

  puts "Using only the first hash:"
  if first_hash[:user_numbers].include?(user_num)
    puts "  The number, #{user_num} was provided by the user earlier."
  else
    puts "  The number, #{user_num} was not provided by the user earlier."
  end

  if first_hash[:random_numbers].include?(user_num)
    puts "  The number, #{user_num} shows up in the randomly generated number."
  else
    puts "  The number, #{user_num} did not show in the randomly generated numbers."
  end
  
  puts "\Using only the second hash:"
  count = second_hash[user_num.to_s.to_sym][:random_count]

  if count
    puts "  The number, #{user_num} shows up #{count} time(s) in the randomly generated numbers."
  else
    puts "  The number, #{user_num} did not show up in the randomly generated numbers."
  end

  count = second_hash[user_num.to_s.to_sym][:user_count]

  if count
    puts "  The number, #{user_num} was provided #{count} time(s) by the user."
  else
    puts "  The number, #{user_num} was not provided by the user."
  end
end



