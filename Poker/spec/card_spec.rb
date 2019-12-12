require "card.rb"
require "rspec"

describe "Card" do 
    subject(:card) {Card.new(:two, :diamond)}

    describe "#initialize" do 
        it "should take in a value and a suit and initialize properly" do
            expect(card).to be_a(Card)
        end

        it "should initialize a value and a suit and assign them as getter methods" do
            expect(card.value).to eq(:two)
            expect(card.suit).to eq(:diamond)
        end
    end 
end


