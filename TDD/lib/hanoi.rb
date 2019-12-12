class Hanoi

    attr_accessor :arr1, :arr2, :arr3, :size

    def initialize(arr)
        @arr1 = arr
        @arr2 = []
        @arr3 = []
        @size = [@arr1.length,0,0]
    end

    def move(num1, num2)
        case num1
        when 1
            num1 = arr1
        when 2
            num1 = arr2
        when 3
            num1 = arr3
        end
        raise ArgumentError if num1.empty?

        case num2
        when 1
            num2 = arr1
        when 2
            num2 = arr2
        when 3
            num2 = arr3
        end

        ele = num1[0]
        if num2.empty? || num2[0] > ele
            num2.unshift(num1.shift)
        end
    end


    def won?
        return arr1.empty? && (arr2.empty? || arr3.empty?)
    end

    def run
        until won?
            print "#{arr1}\n" 
            print "#{arr2}\n" 
            print "#{arr3}\n" 

            puts "Enter an input (1,2,3): "
            num1 = gets.chomp.to_i
            puts "Enter another integer (1,2,3): "
            num2 = gets.chomp.to_i
            move(num1,num2)
        end
        puts "You won!"
        true
    end
end


game = Hanoi.new([1,2,3])
game.run

