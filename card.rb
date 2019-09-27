class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    self.rank = rank
    self.suit = suit
  end

  def output_card
    puts "#{self.rank} of #{self.suit}"
  end

  def self.random_card
    Card.new(rand(10), :spades)
  end
end

class Deck
  def initialize
    @ranks = [*2..10, 'Jack','Queen', 'King', 'Ace']
    @suits = ['Spades', 'Hearts', 'Diamonds', 'Clubs']
    @cards = []

    @ranks.each do |rank|
      @suits.each do |suit|
        @cards << Card.new(rank, suit)
      end
    end
  end

  def shuffle
    @cards.shuffle!
  end

  def deal (number)
    hand = []
    number.times do 
      hand << @cards.shift
    end
    return hand

  end
end
    

deck = Deck.new
deck.shuffle
p deck.deal(7)