# C14 Ada State Fair

=begin
This program was developed by Ekaterina Malakhova, 
Honored Accountant of the State of Ada.
=end

# The program should read in 3 parties’ ticket purchases and food purchases
parties = 3

# Single ticket price
ticket_price = 35.00

# Price for 4 tickets
bundle_price = 112.00

# Cotton candy price per serving
candy_price = 1.25

# Curly fries price for small and large size
sfries_price = 2.50
lfries_price = 4.00

# An array that contains Ada State Fair receipts
=begin
fair_receipts array structure: 
fair_receipts = [
  { # 1st party receipt
  tickets: tickets_total, # money spent on tickets
  food: food_total # money spent on food
  },

  { # 2nd party receipt },

  ...
  
]
=end
fair_receipts = []

# Gets user input from the command line and verifies it
# Verification includes 2 parts:
#  - make sure that input is integer
#  - make sure that input integer is a positive number
# Note: I consider tickets as attraction tickets, not an entry tickets
# Therefore, ticket must be non-negative (>= 0)
def get_count(prompt)
  # Prompt the user for input
  print "#{prompt} => "
  # Execute until logical requirements are met
  loop do 
    # Convert user input to Integer 
    # Do not throw an ArgumentError exception if input is not an integer
    count = Integer(gets) rescue false
    # Determine the type of the value, stored in variable count
    # If the object type is not an Integer, print warning, and prompt user for input
    if count.class != Integer
      puts "\nValue must be an integer."
      puts "Error code: 01101111 01101111 01110000 01110011." 
      print "Enter valid number => "
    # Make sure that an Integer is a positive number
    # If an Integer is negative, print warning, and prompt user for input
    elsif count < 0 
      puts "\nThe number cannot be negative."
      puts "Error code: 01101111 01101111 01110000 01110011." 
      print "Enter valid number => "
    # If the input is an integer and a positive number, return it
    else
      return count
    end
  end
end

# Introduction
puts "Welcome to the Ada State Fair Expense Tracker.\n
This program will help you track the amount earned by selling tickets and food.\n
Please provide some information." 

# Prompt user for input "parties" number of times 
# The current value of parties is 3
# Store input in fair_receipts array
concessions = 0
for num in (1..parties) do
  puts "\nInput the following for party ##{num}:"
  # Get and verify user input
  tickets_count = get_count("Number of tickets") 
  candies_count = get_count("How many servings of cotton candy did they order?")
  sfries_count = get_count("How many orders of small curly fries?")
  lfries_count = get_count("How many orders of large curly fries?")

  # Hash that stores party #num data
  receipt = Hash.new
  fair_receipts << receipt

  # Apply special offer for lots of 4 tickets
  receipt[:tickets] = (tickets_count/4) * bundle_price + (tickets_count%4) * ticket_price
  
  # Amount of money spent on food by party #num
  receipt[:food] = candies_count*candy_price +
  lfries_count*lfries_price + sfries_count*sfries_price

  # The total amount spent on ticket concessions by all parties
  concessions += tickets_count*ticket_price - receipt[:tickets]
end

puts "\n---\n\nSummary:\n\n"

# Summary for each party
for num in (1..parties) do
  receipt = fair_receipts[num-1]
  # Total amount of money spent at the Ada State Fair by party #num
  party_total_spent = receipt[:tickets] + receipt[:food]
  puts "Party ##{num} spent a total of $#{'%.2f' % receipt[:tickets]} on tickets "\
  "and $#{'%.2f' % receipt[:food]} on food for a total of "\
  "$#{'%.2f' % party_total_spent}."
end

# The #num of party, that spent the most on Ada State Fair
max_spent_party = 0
# Total amount of money, spent by the most expensive party
max_spent_amount = 0
# The total earnings for the session
total_earned = 0
# Calculate total amount of money spent on food and tickets by party #num 
for num in (1..parties) do
  receipt = fair_receipts[num-1]
  party_total_spent = receipt[:tickets] + receipt[:food]
  total_earned += party_total_spent

  # Determine the party, that spent the most by comparing party_total_spent of each party
  if max_spent_amount < party_total_spent
    max_spent_amount = party_total_spent
    max_spent_party = num
  end
end

puts "\nIn this session the fair earned $#{'%.2f' % total_earned}."
puts "The total spent on concessions is $#{'%.2f' % concessions}."
puts "Party ##{max_spent_party} spent the most money for a total of $#{max_spent_amount}."



