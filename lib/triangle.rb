class Triangle
  attr_accessor :legnth, :width, :height
  def initialize (legnth,width,height)
    @legnth = legnth
    @width = width
    @height = height
  end
  
  def kind 
    valid_triangle
    if legnth == width && width == height
      :equilateral
    elsif legnth == width || height == width  || height == legnth 
      :isosceles
    else
      :scalene
    end
  end

  def valid_triangle
    if legnth < 0 || width < 0 || height < 0
      raise TriangleError
    end
    if legnth >= (width + height) || width >= (legnth + height)  || height >= (width + legnth)
      raise TriangleError
    end 
  end

  class TriangleError < StandardError
    "Triangle error was raised"
  end

   
end
