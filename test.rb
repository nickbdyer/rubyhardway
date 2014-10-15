 code = "123"
    print "[keypad]> "
    guesses = 0
    puts "Guesses: #{guesses}"
    guess = $stdin.gets.chomp

    while guess != code && guesses < 10
      guess = $stdin.gets.chomp
      puts "BZZZZEDDD!"
      print "[keypad]> "
      guesses += 1
      puts "Loop Guesses: #{guesses}"
    end
