# define la clase Perro
class Perro

  # método inicializar clase
  def initialize(raza, nombre)
    # atributos
    @raza = raza
    @nombre = nombre
  end

  # método ladrar
  def ladrar
    puts 'Guau! Guau!'
  end

  # método saludar
  def saludar
    puts "Soy un perro de la raza #{@raza} y mi nombre es #{@nombre}"
  end
end

# para hacer nuevos objetos,
# se usa el método new
d = Perro.new('Labrador', 'Benzy')
puts d.methods.sort
puts "La id del ojbeto es #{d.object_id}."

if d.respond_to?("correr")
  d.correr
else
  puts "Lo siento, el objeto no entiende el mensaje 'correr'"
end

d.ladrar
d.saludar

# con esta variable, apuntamos al mismo objeto
d1 = d
d1.saludar

d = nil
d1.saludar
