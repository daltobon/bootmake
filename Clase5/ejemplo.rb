class Animal
  attr_reader :name
  def initialize
    @name = "Tobias"
  end
end

class Dog < Animal
  def initialize
  end
end

tobias = Dog.new
puts tobias.name

#NO Imprimiria nada, por que hereda argumentos y metodos pero no atributos
