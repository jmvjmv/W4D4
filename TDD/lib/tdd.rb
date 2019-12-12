
def my_uniq(arr)
    uniq_arr = []
    arr.each do |ele|
        uniq_arr << ele unless uniq_arr.include?(ele)
    end
    uniq_arr
end

class Array
    def two_sum
        pairs = []
        (0...self.length).each do |i|
            (i+1...self.length).each do |j|
                pair = [i,j]
                pairs << pair if self[i] + self[j] == 0
            end
        end
        pairs
    end

end


def my_transpose(arr)
    raise TypeError.new if arr.none?{|ele| ele.is_a?(Array)}
    i = 0 
    arr.map do |ele|
        sub_arr = []
        arr.each do |rows|
            sub_arr << rows[i]
        end
        i += 1
        sub_arr
    end
end

class TypeError < StandardError

end

def stock_picker(arr)
    raise ArgumentError if arr.any?{|ele| !(ele.is_a?(Integer))}
    max_profit = 0
    best_pair = []
    arr.each_index do |i|
        arr.each_index do |j|
            next if i >= j
            profit = arr[j] - arr[i]
            if profit > max_profit
                best_pair = [i, j]
                max_profit = profit
            end
        end
    end
    return best_pair
end
