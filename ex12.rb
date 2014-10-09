print "Give me a number: "
number = gets.chomp.to_i

bigger = number * 100
puts "A bigger number is #{bigger}."

print "Give me another number: "
another = gets.chomp
number = another.to_i

smaller = number / 100
puts "A smaller number is #{smaller}."

print "What about converting to a float, give me a number:"
num = gets.chomp.to_f
third = num / 3
puts "This is your number divided by 3: #{third}"


print "Please give me some money: "
num = gets.chomp.to_f
tenpercent = num / 10
puts "Here is some of your money back: #{tenpercent}"