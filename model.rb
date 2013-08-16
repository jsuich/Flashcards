
class Deck
  attr_reader :source_file, :deck

  def initialize(source_file = 'flashcard_samples.txt')
    @source_file = source_file
    @deck = []
    create_deck
    shuffle
  end

  def read_file
    f = File.open(source_file)
    a = f.readlines
    a.map! {|x| x.chomp}.reject! { |x| x.empty? }
    a.each_slice(2).to_a
  end

  def create_deck
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

