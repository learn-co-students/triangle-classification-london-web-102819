require 'pry'

class Triangle
  # write code here
  attr_accessor :one_length, :two_length, :three_length, :kind

  def initialize(one_length, two_length, three_length)
    @one_length = one_length
    @two_length = two_length
    @three_length = three_length
  
  end

  class TriangleError < StandardError
    def message
      "Your triangle lengths are not valid."
    end
  end

  def kind
    one = self.one_length
    two = self.two_length
    three = self.three_length
    if one <= 0 || two <= 0 || three <= 0 || one + two <= three || three + one <= two || two + three <= one
      raise TriangleError
    elsif one == two && two == three
      self.kind = :equilateral
    elsif one == two || two == three || one == three
      self.kind = :isosceles
    else
      self.kind = :scalene
    end

  end

end

puts 'done'