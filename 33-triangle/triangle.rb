class Triangle
  attr_reader :sides, :unique_sides

  def initialize(a, b, c)
    @sides = [a, b, c].sort
    @unique_sides = sides.uniq.count
  end

  def kind
    TRIANGLES[unique_sides] if valid?
  end

  def valid?
    if negative_side? || illegal_size?
      raise TriangleError
    else 
      true
    end
  end

  def negative_side?
    sides.any?{|s| s <= 0} 
  end

  def illegal_size?
    sides[0] + sides[1] <= sides[2]
  end

  TRIANGLES = {
    1 => :equilateral,
    2 => :isosceles,
    3 => :scalene
  }
end

class TriangleError < Exception; end