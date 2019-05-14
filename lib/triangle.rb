class Triangle
  attr_reader :triangleside_1, :triangleside_2, :triangleside_3

    def initialize(triangleside_1, triangleside_2, triangleside_3)
      @triangleside_1 = triangleside_1
      @triangleside_2 = triangleside_2
      @triangleside_3 = triangleside_3
    end

    def kind
      if @triangleside_1 == @triangleside_2 && @triangleside_2 == @triangleside_3
        :equilateral
      elsif @triangleside_1 == @triangleside_2 || @triangleside_2 == @triangleside_3 || @triangleside_1 == @triangleside_3
        :isosceles
      elsif @triangleside_1 != @triangleside_2 && @triangleside_2 != @triangleside_3
        :scalene
      end
      raise TriangleError if @triangle.size < 0 
    end
  class TriangleError < StandardError
  end
end
