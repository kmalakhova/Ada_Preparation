# JumpStart: Lesson 10
# Candy machine assignment

puts "Welcome to Ada Developers Academy's Computer Candy Machine! \r
(All candy provided is virtual.)\n\n"

# Ask the user how much money they have
# Assume that the $ symbol is part of the prompt
print "How much money do ya got? > $ "
budget = gets.chomp.to_f

# Make sure entered value is valid
# If not, give user 3 attempts to change attitude
i = 1
until budget > 0 || i == 4
  print "-- Enter a valid amount of money: $"
  budget = gets.chomp.to_f
  i += 1
end

if i == 4 || budget <= 0
  abort "\nSorry, we don't accept pixie dust or magic beans.\rCash or Venmo only."
end

puts "\n$#{budget}, that's all? \r
Well, lemme tell ya what we got here.\n\n"

# Create candy machine hash: 
machine = {
  A: [0.65, "Twix"],
  B: [0.50, "Chips"],
  C: [0.75, "Nutter Butter"],
  D: [0.65, "Peanut Butter Cup"],
  E: [0.55, "Juicy Fruit Gum"]
}

# Display all candy options and their costs
# Format floating-point numbers
machine.each do |k,v|
  puts "#{k} $#{'%.2f' % v[0]} #{v[1]}"
end

print "\nSo, What'll ya have? > "
choice = gets.chomp.capitalize.to_sym

# Let user pick a candy
# Make sure the entered value is valid
# If not, give user 3 attempts to change attitude
i = 1
until machine.key?(choice) || i == 4
  print "-- We don't have such option. Choose from A to E: "
  choice = gets.chomp.capitalize.to_sym
  i += 1
end

if i == 4
  abort "\nWow! You've got a nerve! Get out of here and never come back."
end

# Decide whether the user can afford the candy or not
# machine = {choice: [price, candy]}
price = machine[choice][0]
candy = machine[choice][1]

# User can't afford the candy
if budget < price
  puts "Sorry, you can'r buy #{candy} with your budget of $#{budget}."
# Otherwise calculate and display change
else
  budget -= price
  puts "\nThanks for purchasing candy through us."
  puts "Please take your #{candy}, and your $#{'%.2f' % budget} change."
end