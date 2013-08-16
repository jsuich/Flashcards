
class Deck
  attr_reader :filename, :deck

  def initialize(filename)
    @filename = filename
    @deck = []
    do_that_shit!
    shuffle
  end

  def parser
    f = File.open(filename)
    a = f.readlines
    a.map! {|x| x.chomp}.reject! { |x| x.empty? }
    p a.each_slice(2).to_a
  end

  def do_that_shit!
    parser.each do |pair|
      @deck << Card.new(pair[1], pair[0])
    end
  end
  
  def shuffle
    @deck.shuffle!
  end
end

class Card
  attr_reader :term, :definition

  def initialize(term, definition)
    @term = term
    @definition = definition
  end
end


p my_deck = Deck.new('flashcard_samples.txt')

my_card = Card.new("Altoids", "minty things")
p my_card.term == "Altoids"
p my_card.definition == "minty things"
