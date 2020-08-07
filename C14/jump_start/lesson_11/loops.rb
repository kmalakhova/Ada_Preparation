# JumpStart: Lesson 11
# Loops and Iterators
# Problem Set

2.times do
  puts "dance"
end
puts "puts 'dance' 2 times\n\n"

10.times do |i|
  puts i
end
puts "puts numbers from 0 to 9\n\n"

3.times do
  puts "coding!"
end
puts "puts 'coding' 3 times\n\n"

puts "fun!"
5.times do |x|
  puts "#{x} chicken(s)"
end
puts "puts 'fun!',\r
then puts (from 0 to 4) chickens 5 times\n\n"

10.times do |i|
  puts i * i
end
puts "puts 0\r1\r4\r...\r81\n\n"

(1..5).each do
  puts "hello!"
end
puts "puts 'hello' 5 times\n\n"

(1..3).each do |i|
  puts "#{i} animals(s)"
end
puts "puts (1-3) animals 3 times\n\n"

(1..3).each do |i|
  puts i * i
end
puts "puts 1\r4\r9\n\n"

total = 0
(1..3).each do |i|
  total = total + i
end
puts total
puts "puts 6\n\n"

(1..10).each do |x|
  if x == 5
    puts "You got a winner!"
  end
end
puts "puts 'You got a winner!'\n\n"

i = 0
while i < 3
  puts "hi"
  i = i + 1
end
puts "puts 'hi' 3 times\n\n"

i = 0
while i < 3
  puts "hi"
  i = i + 1
end
puts "bye"

puts "puts 'hi' 3 times\rthen puts 'bye' \n\n"

i = 0
while i < 3
  i += 1
  puts i
end
puts "puts 1, 2, 3\n\n"

i = 3
while i > 0
  puts "ada!"
  i = i - 1
end
puts "puts 'ada' 3 times\n\n"

i = 1
while i < 100
  puts "o hai"
  i = i * 100
end
puts "puts 'o hai'"