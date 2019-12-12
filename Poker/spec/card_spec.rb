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

    describe "#<=>" do 
        it "should return -1 if compared card's value is greater" do
            card2 = Card.new(:three, :diamond)
            expect(card.<=>(card2)).to eq(-1)
        end

        it "should return 1 if compared card's value is lower" do
            card2 = Card.new(:ace, :diamond)
            expect(card.<=>(card2)).to eq(1)
        end

                it "should return  if compared card's value is the same" do
            card2 = Card.new(:two, :spades)
            expect(card.<=>(card2)).to eq(0)
        end

    end



end


