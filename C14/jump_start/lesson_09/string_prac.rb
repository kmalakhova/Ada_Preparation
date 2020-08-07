puts "String practice\n\n"
puts "Determine the output for each of the following problems on your own and then check your answer using irb\n\n"

# problem 1
my_string = "I love Seattle"
puts "answ.: S \r
check: #{my_string.slice(7)}\n\n"

# problem 2
my_string = "I love Seattle"
my_string.slice(2, 4)
puts "answ.: love \r
check: #{my_string.slice(2, 4)}\n\n"

# problem 3
my_string = "I love Seattle"
my_string.slice("Seattle")
puts "answ.: Seattle \r
check: #{my_string.slice("Seattle")}\n\n"

# problem 4
my_string = "Ada"
# my_string += " Lovelace"
puts "answ.: Ada Lovelace \r
check: #{my_string += " Lovelace"}\n\n"

# problem 5
my_string = "Ada"
# my_string << " codes" << " it!"
puts "answ.: Ada codes it! \r
check: #{my_string << " codes" << " it!"}\n\n"

# problem 6
my_string = "Ada"
# my_string.concat(" likes to code").slice(4...9)
puts "answ.: likes \r
check: #{my_string.concat(" likes to code").slice(4...9)}\n\n"

# problem 7
my_string = "Hello world"
#"Goodbye " + my_string.slice(6, 5) << "!"
puts "answ.: Goodbye world! \r
check: #{"Goodbye " + my_string.slice(6, 5) << "!"}\n\n"

# problem 8
my_string = "Hello world!"
my_string.slice(0...5).concat(", goodbye!")
puts "answ.: Hello, goodbye! \r
check: #{my_string.slice(0...5).concat(", goodbye!")}\n\n"

# problem 9
my_string = "Hello world!"
# my_string.slice(0) << "i" + "!"
puts "answ.: Hi! \r
check: #{my_string.slice(0) << "i" + "!"}\n\n"

# problem 10
my_string = "I love Ruby"
# my_string.slice(7, 4).concat(my_string.slice(2..5)) + my_string.slice(0)
puts "answ.: RubyloveI \r
check: #{my_string.slice(7, 4).concat(my_string.slice(2..5)) + my_string.slice(0)}\n\n"

# problem 11
my_string = "I love Ruby"
# my_string.slice(7, 4).concat(my_string.slice(2...6)) + my_string.slice(0)
puts "answ.: RubyloveI \r
check: #{my_string.slice(7, 4).concat(my_string.slice(2...6)) + my_string.slice(0)}\n\n"

# problem 12
my_string = "I love Ruby"
# "R".concat(my_string.slice(8, 3) + " rocks!")
puts "answ.: Ruby rocks! \r
check: #{"R".concat(my_string.slice(8, 3) + " rocks!")}\n\n"

# problem 13
my_string = "I love Ruby"
# my_string.slice(2, 4) << my_string.slice(7...11).concat(my_string.slice(2...6))
puts "answ.: loveRubylove \r
check: #{my_string.slice(2, 4) << my_string.slice(7...11).concat(my_string.slice(2...6))}\n\n"