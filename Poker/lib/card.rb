require "Comparable"

class Card
    include Comparable

    attr_reader :value, :suit, :show

    def initialize(val, suit)
        @value = val
        @suit = suit
        @show = false
    end

    def <=>(other_card)
        if self.value > other_card.value
            return 1 
        elsif self.value < other_card.value
            return -1
        else
            return 0 
        end
    end
end