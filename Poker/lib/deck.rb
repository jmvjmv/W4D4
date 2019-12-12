require_relative "card"

class Deck

    attr_reader :cards

    def initialize 
        @cards = []
        self.populate
    end

    def populate
        arr_cards = [:ace,:two, :three,:four,:five,:six,:seven,:eight,:nine,:ten,:jack, :queen,:king]
        arr_cards.each do |val|
            @cards += make_suits(val)
        end
    end

    def make_suits(val)
        arr_suits = [:hearts, :spades, :diamonds, :clubs]
        arr_suits.map do |suit|
            Card.new(val, suit)
        end
    end

end


b = Deck.new

b.cards.each {|card| puts "#{card.value} of #{card.suit}"}