
class Deck
  attr_reader :filename, :deck

  def initialize(source_file = 'flashcard_samples.txt')
    @source_file = source_file
    @deck = []
    do_that_shit!
    shuffle
  end

  def read_file
    f = File.open(filename)
    a = f.readlines
    a.map! {|x| x.chomp}.reject! { |x| x.empty? }
    p a.each_slice(2).to_a
  end

  def do_that_shit!
    read_file.each do |term_def|
      @deck << Card.new(term_def[1], term_def[0])
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
