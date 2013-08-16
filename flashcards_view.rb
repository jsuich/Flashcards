class View
  attr_accessor :input

  def initialize
    # landing_screen
    # get_input
  end

  def landing_screen
    puts "Welcome to Ruby Flash Cards. To play, just enter the correct term for each definition.  Ready?  Go!\n\n"
  end
  
  def definition_prompt(card)
    puts "Definition:"
    puts card.definition
    puts
  end

  def get_input
    print "Guess: "
    @input = gets.chomp
    # puts "user input is #{@input}"
  end

  def answer_correct
    puts "Correct!"
    puts
  end
  
  def answer_incorrect
    puts "Incorrect! Try again, loser."
  end
  

  def game_over_message
    puts "Hope you had fun."
  end
end
