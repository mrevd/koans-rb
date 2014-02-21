# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  sorted = [a, b, c].sort!

  if sorted[0] + sorted[1] <= sorted[2]
    raise TriangleError, "Two combined sides of a triangle must be greater than the third."
  end

  if sorted.min <= 0
    raise TriangleError, "Each side must have a length greater than 0."
  end

  case [a, b, c].uniq.size
  when 1 then :equilateral
  when 2 then :isosceles
  else        :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
