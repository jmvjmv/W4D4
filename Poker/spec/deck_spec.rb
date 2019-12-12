require "deck.rb"
require "rspec"

describe "Deck" do 
    subject(:deck) {Deck.new}

    def "#initialize" do 
        it "should make a Poker deck with card instances" do
            expect(deck.cards.length).to eq(52)
        end
    end

end