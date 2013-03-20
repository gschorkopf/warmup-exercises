def triangle(a, b, c)
  if [a, b, c].any? {|side| side < 0}
    raise TriangleError
  elsif c > (a+b) || b > (c+a) || a > (b+c)
    raise TriangleError
  else
    report_type(a, b, c)
  end
end

def report_type(a, b, c)
  if a == b && b == c
    :equilateral
  elsif a == b || b == c || a == c
    :isosceles
  else
    :scalene
  end
end

class TriangleError < Exception; end