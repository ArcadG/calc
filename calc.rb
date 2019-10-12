require_relative 'action'
# 1 + 2
class Calc
    def initialize
        @action = Action.new
        read_operands
    end

    def read_operands
        s = gets.chomp
        arr = s.split(/\d\s/)
        arr1 = s.split(/\D\s/)
        @a = arr1[0].to_i
        @operator = arr[-1]
        @b = arr1[1].to_i 
    end

    #def read_operands
        #arrey = gets.split 
        #@a = arrey[0].to_i
        #@operator = arrey[1]
        #@b = arrey[2].to_i
    #end

    #def read_operands
        #print 'Write a: '
        #@a = gets.to_i
        
        #print 'Write operator: '
        #@operator = gets.chomp

        #print 'Write b: '
        #@b = gets.to_i
    #end

    def start
        result = @action.perform operator: @operator, a: @a, b: @b
        #puts "Result: #{result}"
        puts "#{@a} #{@operator} #{@b} = #{result}"
    end
end

calc = Calc.new
calc.start
