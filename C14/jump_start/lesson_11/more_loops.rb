# JumpStart: Lesson 11
# Loops and Iterators
# More Loops and Iterators Worksheet

cars = ["old", "new", "used"]
cars.each do |car|
  puts car
end
puts "puts: \rold\rnew\rused\n\n"

fruits = ["banana", "apple", "kiwi"]
fruits.each do |fruit|
  puts "I love " + fruit + "!"
end
puts "puts: \rI love banana!\r... apple!\r... kiwi!\n\n"

values = [8, 5, 3, 10, 14, 2]
values.each do |value|
  puts value
end
puts "puts: \r8\r5\r3\r10\r14\r2\n\n"

total = 0
values = [4, 6, 2, 8, 11]
values.each do |value|
    total = total + value
end
puts total
puts "puts 31\n\n"

values = [8, 5, 3, 10, 14, 2]
values.each do |value|
  if value == 10
    puts "Special case!"
  else
    puts "Regular values like #{value}"
  end
end
puts "puts: \rRegular values like 8\r...5\r...3\r'Special case!\r...14\r...2"