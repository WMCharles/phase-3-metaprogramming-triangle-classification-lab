
class Triangle
  # write code here
  attr_accessor :side_a, :side_b, :side_c

  def initialize(side_a,side_b,side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def kind
    sum_a = self.side_a + self.side_b
    sum_b = self.side_b + self.side_c
    sum_c = self.side_a + self.side_c

    if(self.side_a <= 0 || self.side_b <= 0 || self.side_c <= 0 || sum_a<=self.side_c || sum_b<=self.side_a || sum_c<=self.side_b )     
        raise TriangleError
    elsif (self.side_a == self.side_b && self.side_b == self.side_c && self.side_a != 0)
        return :equilateral
      elsif (self.side_a==self.side_b || self.side_a==self.side_c || self.side_b == self.side_c)
            return :isosceles
        else
          return :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "Check ur values"
    end
  end

end


