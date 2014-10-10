filename = ARGV.first

puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

$stdin.gets

puts "Opening the file..."
target = open(filename, 'r+')
#This read works. 
print target.read + "Before Truncate"

puts "Truncating the file. Goodbye!"
target.truncate(0)
# This read works, but is blank. 

puts target.read + "After Truncate"

puts "Now I'm going to ask you some text."

print "line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp
print "line 3: "
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file."

target.write("#{line1}\n#{line2}\n#{line3}\n")
# This read does not work. Presumably because the lines are stored elsewhere before saving. 
print target.read + "After Write"


puts "And finally, we close it."
target.close

# This read doesn't work, because the file is now closed. 
print target.read


# This read obviously works. 
readfile = ARGV.first
target2 = open(readfile, 'r')

puts "Read it:"
print target2.read
