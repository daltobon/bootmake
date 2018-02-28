module ModuloEjemplo
  MAX_CONNECTIONS = 5

  def method_one
    puts "hola mundo"
  end

  def method_two
   puts "hola otra vez"
  end

  class ThingOne
   include ModuloEjemplo

    def method
      puts "hello world"
    end
  end

  module OtroModulo
    class ThingThree
      def method_three
      puts "soy el metodo tres"
      end
    end
  end
  
  end

      # Incluye metodos de la clase, despues de incluir el modulo
      class ThingTwo
        include ModuloEjemplo

        def methodtwo
          method_two
        end
      end



a= ModuloEjemplo::ThingOne.new
c1 = a.method

b = ThingTwo.new
c2 = b.methodtwo

puts c1
print c2

c = ModuloEjemplo::OtroModulo::ThingThree.new
c3 = c.method_three
puts c3
