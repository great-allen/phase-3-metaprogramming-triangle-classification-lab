class Triangle
  # write code here
  attr_accessor :a,:b,:c
  def initialize(a,b,c)
    @a=a
    @b=b 
    @c=c  
  end

  def kind
    valid_triangle
    if self.a==self.b && self.b==self.c
      :equilateral
    elsif 
      self.a==self.b|| self.a==self.c || self.b==self.c
      :isosceles
    else
      :scalene
    end
  end

  def triangle_inequality
    self.a+self.b>self.c && self.a+self.c>self.b && self.b+self.c>self.a
  end

  def two_sides_greater_than_third?
    self.a+self.b>self.c || self.a+self.c>self.b || self.b+self.c>self.a
  end

  def side_greater_than_zero
    self.a>0 && self.b>0 && self.c>0
  end

  def valid_triangle
    begin raise TriangleError unless two_sides_greater_than_third? && side_greater_than_zero && triangle_inequality
    end
  end
  class TriangleError < StandardError
    # triangle error code
  end

end
