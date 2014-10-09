first, second, third = ARGV

puts "Your first variable is: #{first}"
puts "Your second variable is : #{second}"
puts "Your third variable is: #{third}"

print "Write something: "
input = STDIN.gets.chomp

puts "This sentence combines the first ARGV Value: #{first} with user input #{input}"