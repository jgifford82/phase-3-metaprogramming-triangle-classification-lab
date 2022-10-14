require 'pry'

class Triangle
  attr_reader :num1, :num2, :num3

  def initialize(num1, num2, num3)
    @num1 = num1
    @num2 = num2
    @num3 = num3
  end

  def kind
    if num1 == 0 && num2 == 0 && num3 == 0
      # binding.pry
      raise TriangleError
      # binding.pry
    elsif num1.negative? || num2.negative? || num3.negative?
      raise TriangleError
    elsif !triangle
      raise TriangleError
    # elsif num1 + num2 < num3 && num1 + num3 < num2 && num2 + num3 < num1
      # binding.pry
      # raise TriangleError
      # binding.pry
    elsif num1 == num2 && num2 == num3
      :equilateral
      # binding.pry
    elsif num1 == num2 || num2 == num3 || num1 == num3
      :isosceles
    elsif num1 != num2 && num2 != num3
      :scalene
      # binding.pry
    end
  end

  def triangle
    num1 + num2 > num3 && num1 + num3 > num2 && num2 + num3 > num1
  end

  class TriangleError < StandardError
  end
end