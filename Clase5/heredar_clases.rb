class Figure
  attr_accessor :stroke, :fill
end

class Circle < Figure
  attr_accessor :radius

  def to_s
    "Este es un circulo con radio"
  end
end

class Cylinder < Circle
  attr_accessor :length
end

c1 = Cylinder.new
c1.fill = "red"
puts c1.fill

c2 = Circle.new
c2.radius
puts c2.radius = 90

c3 = Cylinder.new
c3.length
puts c3.length = 20

c4 = Cylinder.new
c4.to_s
puts c4
=begin
Sobreescribir metodos de una clase
=end
