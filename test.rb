    code = "123"
    print "[keypad]> "
    guess = $stdin.gets.chomp
    guesses = 1

    while guess != code && guesses < 10
      puts "Begin Loop Guesses: #{guesses}"
      puts "BZZZZEDDD!"
      print "[keypad]> "
      guesses += 1
      guess = $stdin.gets.chomp
      puts "End Loop Guesses: #{guesses}"
    end
