class Triangle
  # write code here
  attr_reader :a, :b, :c
  def initialize(a,b,c)
   @a = a
   @b = b  
   @c = c  
  end

  def kind
    if a+b <=c || b+c <= a || a+c <= b
      raise TriangleError
    end
    if a!=b && b!=c  && a !=c
      "scalene".to_sym 
    elsif a==b && a ==c 
      "equilateral".to_sym
    else
      "isosceles".to_sym
    end
  end

  class  TriangleError < StandardError
  end
end
