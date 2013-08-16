require_relative "controller.rb"
require_relative "model_josh_local.rb"

p my_deck = Deck.new('flashcard_samples.txt')
my_card = Card.new("Altoids", "minty things")
p my_card.term == "Altoids"
p my_card.definition == "minty things"
