# PRESENT CARD DEFINITIONS
# CHECK INPUT AGAINST TERM
# PASS COMMANDS TO MODEL
# DECKS AND CARDS  AND INPUT FROM USER

require_relative "model.rb"
require_relative "view.rb"

class Controller

  attr_reader :deck, :view

  def initialize
    @deck = Deck.new
    @view = View.new
    run_game(5)
  end

  def run_game(num_questions)
    game_deck = @deck[0..5]
    test_question(game_deck)
    until game_deck.length == 1
      test_question(game_deck)
    end
  end

  def test_question(game_deck)
    card = game_deck.pop
    definition_prompt(card)
    
    if get_input == card.definition
      answer_correct
      test_question(game_deck)
    else
      until get_input == card.definition
        answer_incorrect
        get_input
      end
    end
  end

  game_over_message

end

