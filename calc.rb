'1+2'
require 'pry'
require_relative 'action'

class Calc
  attr_reader :expression, :operands

  def initialize
    @action = Action.new
    read_expression
    parse_expression
  end

  def perform
    result = operands.sum { |number| number.first.to_f }
    puts "#{expression} = #{result}"
  end

  # def start
  #   result = @action.perform operator: @operator, a: @a, b: @b
  #   puts "#{@a} #{@operator} #{@b} = #{result}"
  # end

  private

  def read_expression
    puts 'Введите выражение: '
    @expression = gets.chomp
  end

  def parse_expression
    @operands = expression.delete(' ').sub('--', '+').sub('+-', '-').sub('-+', '-').scan(/([\+\-]?\d+\.?\d*)/)
  end

  # def perform
  #   binding.pry
  #   arr = expression.split(/\d/)
  #   arr1 = expression.split(/\D/)
  #   @a = arr1[0].to_i
  #   @operator = arr[-1]
  #   @b = arr1[-1].to_i

  #   if arr[0] == '-'
  #     @a = arr1[1].to_i
  #     @a = -@a
  #   end

  #   if @operator == '+-'
  #     @operator = '+'
  #     @b = -@b
  #   end

  #   if @operator == '--'
  #     @operator = '-'
  #     @b = -@b
  #   end
  # end
end

calc = Calc.new
calc.perform
