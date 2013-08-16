
class Controller

  attr_reader :deck, :view

  def initialize
    @deck = Deck.new
    @view = View.new
    run_game(5)
  end

  def run_game(num_questions)
    view.landing_screen
    game_deck = @deck.deck[0..5]
    test_question(game_deck)
    until game_deck.length == 1
      test_question(game_deck)
    end
  end

  def test_question(game_deck)
    card = game_deck.pop
    puts "card is #{card.term}, #{card.definition}"
    view.definition_prompt(card)
    view.get_input
    until view.input == card.term
      view.answer_incorrect
      view.get_input
    end
    view.answer_correct
    test_question(game_deck)
  end

  # game_over_message

end

