=begin
Construir una aplicacion (usando POO)
que permita llamar, colgar y mostrar el
historial de llamadas con la duracion de
cada una, no se puede llamar si ya hay una
llamada previa, ademas debe poder mostrar
la llamada actual
=end

class Phone

  def initialize
      @ocupado = false
      @colgando = true
  end

  def llamando(name)
    if @ocupado == false
      @ocupado = true
      puts "LLamada en proceso por #{name}"
    else
      puts "Está ocupado"
    end
  end

  def colgando(name)
    if @colgando == false
      @colgando = true
      puts "LLamada terminada por #{name}"
    else
      puts "El telefono sigue ocupado"
    end
  end
end

llamada1 = Phone.new
puts llamada1.llamando("Carlos")

colgar = Phone.new
puts colgar.colgando("Carlos")
