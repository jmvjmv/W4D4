

class Card

    attr_reader :value, :suit, :show

    def initialize(val, suit)
        @value = val
        @suit = suit
        @show = false
    end

end