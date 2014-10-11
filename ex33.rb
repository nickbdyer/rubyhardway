# @numbers = []

# def whileloop(num, increment)
# 	i = 0
# 	while i < num
# 	  puts "At the top i is #{i}"
# 	  @numbers.push(i)

# 	  i += increment
# 	  puts "Numbers now: ", @numbers
# 	  puts "At the bottom i is #{i}"
# 	end
# end

# puts "Enter loop number: "

# finalnumber = $stdin.gets.chomp.to_i

# puts "Enter increment number: "
# incre = $stdin.gets.chomp.to_i

# whileloop(finalnumber, incre)

# puts "The numbers: "

# # remember you can write this 2 other ways?
# @numbers.each {|num| puts num }


# Re-write original while loop to use for loop with range. Increment left in, adds one to i once. 

numbers = []

for i in (0..6)
  puts "At the top i is #{i}"
  numbers.push(i)

  i += 1
  puts "Numbers now: ", numbers
  puts "At the bottom i is #{i}"
end

puts "The numbers: "

# remember you can write this 2 other ways?
numbers.each {|num| puts num }