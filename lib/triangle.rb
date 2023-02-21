class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3, :equilateral, :isosceles, :scalene

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    validate_triangle
    if side1 == side2 && side1 == side3
      :equilateral
    elsif
      side1 == side2 || side1 == side3 || side2 == side3
      :isosceles
    else 
      :scalene
    end
  end

  def non_zero?
    side1 > 0 && side2 > 0 && side3 > 0
  end

  def illegal_side_length?
    side1 + side2 > side3 && side2 + side3 > side1 && side3 + side1 > side2
  end

  def validate_triangle
    raise TriangleError unless non_zero? && illegal_side_length?
  end
  
  class TriangleError < StandardError
  end


end
