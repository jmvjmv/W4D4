require "tdd"
require "rspec"

describe "my_uniq" do
    let(:array) { [1, 2, 1, 3, 3] }

    it "removes duplicates" do
        expect(my_uniq(array)).to eq([1,2,3])
    end
end

describe "Array#two_sum" do
    let(:array) { [-1, 0, 2, -2, 1] }

    it "finds 0 from pairs" do
        expect(array.two_sum).to eq([[0, 4], [2, 3]])
    end

    it "should return [] if no 0 pairs" do
        arr = [1,2,3,4]
        expect(arr.two_sum).to eq([])
    end 
end

describe "my_transpose" do
    let(:rows) {[
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]}


    it "switches rows and columns for a 2D array" do 
        expect(my_transpose(rows)).to eq(      
        [[0, 3, 6],
        [1, 4, 7],
        [2, 5, 8]])
    end
    
    it "raises error if given 1D array" do 
        arr = [1,2,3,3]
        expect{(my_transpose(arr))}.to raise_error(TypeError)
    end

end

describe "stock_picker" do
    let(:arr) { [1,2,3,4,5,2,3] }

    it "returns most profitable pairs of days" do 
        expect(stock_picker(arr)).to eq([0,4])
    end

    it "raises error if given wrong value" do
        arr = [1,2,3,"hi"]
        expect {stock_picker(arr)}.to raise_error(ArgumentError)
    end

    it "returns an empty array if argument is an empty arr or elements are only increasing" do
        arr = [5,4,3,2,1]
        expect(stock_picker(arr)).to eq([])
        arr2 = []
        expect(stock_picker(arr2)).to eq([])
    end
end