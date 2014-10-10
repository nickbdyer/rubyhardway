# Similar to scripts using ARGV
def print_two(*args)
	arg1, arg2 = args
	puts "arg1: #{arg1}, arg2: #{arg2}"
end

# Revised version of the above

def print_two_again(arg1, arg2)
	puts "arg1: #{arg1}, arg2: #{arg2}"
end

# One argument
def print_one(arg1)
	puts "arg1: #{arg1}"
end

# No arguments
def print_none()
	puts "I got nothin'."
end

print_two("Nick", "Dyer")
print_two_again("Nick", "Dyer")
print_one("First!")
print_none()