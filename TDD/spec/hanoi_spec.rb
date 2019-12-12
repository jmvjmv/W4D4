require "hanoi.rb"

describe "Hanoi" do 
    subject(:game) {Hanoi.new([1,2,3])}

    describe "#initialize" do 
        it "should accept an array of all sorted unique integer values" do 
            expect(game).to be_a(Hanoi)
        end

        it "should have two empty array attributes" do 
            expect(game.arr2).to eq([])
            expect(game.arr3).to eq([])
        end

        it "should have a size attribute detailing the number of circles in each stack" do 
            expect(game.size).to eq([3,0,0])
        end
    end

    describe "#move" do
        it "should accept two numbers" do
            expect { game.move(1,2) }.not_to raise_error
        end

        it "should raise error if arr1 if empty" do
            expect { game.move(2,3)}.to raise_error(ArgumentError)
        end

        it "should take the first element from first array and add to the end of the second array" do
            game.move(1,2)
            expect(game.arr1).to eq([2,3])
            expect(game.arr2).to eq([1])
        end
    end

    describe "#won?" do 
        it "should return true if arr1 is empty and one other arr is empty" do 
            game.move(1,2)
            game.move(1,3)
            game.move(2,3)
            game.move(1,2)
            game.move(3,1)
            game.move(3,2)
            game.move(1,2)
            # [1,2,3] [] []
            # [2,3] [1] []
            # [3] [1] [2]
            # [3] [] [1,2]
            # [] [3] [1,2]
            # [1] [3] [2]
            # [1] [2,3] []
            # [] [1,2,3] []
            expect(game.won?).to be true 
        end

        it "should return false otherwise" do 
            expect(game.won?).to be false
        end
    end

    describe "#run" do 
        it "should repeatedly prompt the user until game is over" do 
            game.run
            expect(game.won?).to be true
        end
    end

end