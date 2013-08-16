class View
  attr_accessor :input

  def initialize
    landing_screen
    definition_prompt
    get_input
  end

  def landing_screen
    "Welcome to Ruby Flash Cards. To play, just enter the correct term \
    for each definition.  Ready?  Go!\n"
  end
  
  def definition_prompt(card)
    puts "Definition"
    puts card.definition
  end

  def get_input
    puts "Guess: "
    @input = gets.chomp
  end

  def answer_correct
    puts "Correct!"
  end
  
  def answer_incorrect
    puts "Incorrect! Try again, loser."
    get_input
  end
  

  def game_over_message
    puts "Hope you had fun."
  end
end
