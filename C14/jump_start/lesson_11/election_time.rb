

# JumpStart: Lesson 11
# Assignment: Election Time

# welcome user
puts "Welcome to my election voting program.\n\n"

# election candidates
# hash scheme:
# candidates_hash = { name: vote_count }
candidates_hash = {
  "Leslie Knope": 0,
  "Thomas Haverford": 0,
  "Andrew Dwyer": 0,
  "Mona Lisa Saperstein": 0,
  "Donna Meagle": 0
}

puts "The election candidates are: "
candidates_hash.each_key do |name|
  puts "\t#{name}"
end

# poll people for their election vote
print "\nEnter your candidate to vote\r
or enter 'Q' to exit.\n\n"

# prompt user for vote
count = 1
loop do
  print "Vote #{count}: "
  candidate = gets.chomp
  candidate = candidate.split.each{|i| i.capitalize!}.join(' ')
  candidate = candidate.to_sym

  if candidate == :Q
    break
  end

  # if candidate is in hash, add one to vote count
  if candidates_hash.key?(candidate)
    candidates_hash[candidate] += 1
  else 
    puts "-- Error: unknown candidate.\r\
-- Try again or enter 'Q' to exit."
  end
  # increment vote count
  count += 1
end

puts "\nELECTION RESULTS...."

puts "\nVote Summary:"

candidates_hash.each do |name, vote_count|
  print "#{name} - #{vote_count} "
  # if candidate only have 1 vote, say 'vote'.  Otherwise say 'votes'.
  if vote_count == 1
    puts "vote"
  else
    puts "votes"
  end
end

# find the max number of votes
max_votes = candidates_hash.values.max

# store all of the winners
winners_list = []

# if candidate has the same number as max votes, add to winner's list
candidates_hash.each do |name, vote_count|
  winners_list.push(name.to_s) if vote_count == max_votes
end

# print the winner(s)
if winners_list.length == 1
  print "\nThe winner is: #{winners_list[0]}.\n\n"

  if winners_list.include? ("Leslie Knope")
  puts "\"Winning is every girl's dream. But it's my destiny. And my dream\".\r- Leslie Knope, Parks and Rec."
  end

else
  print "\nIt's a tie!  The winnners are: #{winners_list.join(", ")}"
end

