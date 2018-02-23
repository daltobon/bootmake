class Person
  attr_accessor :name # Permite leer y escribir la variable sin definir los metodos

  def initialize(name)   #constructor
    @name = name
  end

  def greet(otra_persona)
    "Hola #{otra_persona}, me llamo #{@name}" #variable de instancia @name
end

# def name
#   @name        #LEER VARIABLE
# end
#
# def name=(name)
#   @name         #SOBREESCRIBIR VARIABLE
# end

end  #initialize lo hago disponible dentro de la clase

p1 = Person.new("laura")   #Variable del constructor, las comillas evitan que se lea como variable
puts p1.greet("daniel")   #varible de la otra persona
puts p1.name
puts p1.name=("Carlos")

#1. Instacia de una clase con .new (punto new)
#2. Constructor "initialize"
#3. Dentro del Constructor defino la variable con @
#4. Expongo mi variable de instacia con un metodo dentro de la clase
#Nombrar bien las variables
