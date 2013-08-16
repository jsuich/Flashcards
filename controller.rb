# PRESENT CARD DEFINITIONS
# CHECK INPUT AGAINST TERM
# PASS COMMANDS TO MODEL
# DECKS AND CARDS  AND INPUT FROM USER
require 'model.rb'
require 'view.rb'

class Controller

  attr_reader :deck, :view

  def initialize
    @deck = Deck.new
    @view = View.new
    run_game(5)
  end

  def run_game(num_questions)
    @game_deck = @deck(0..5)
    test_question(@game_deck)
  end

  def test_question(@deck)
    until @game_deck.length == 1
    @card = @deck.pop
    render_definition(@card.definition)
    @card.term == answer_prompt_return ? test_question(@game_deck)
    end
  end
  
end


