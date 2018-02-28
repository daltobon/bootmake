require 'date'
require_relative "./interfaz.rb"

class Costos

 attr_accessor :ingresos, :egreso, :fecha

  def initialize
      @ingresos = []
  end

  #Metodo para Ingresos
    def ingresos(cantidad, fecha, descripcion)
       arrfecha = fecha.split("-").map {|c| c.to_i}
       fechafinal = Date.new(arrfecha[0], arrfecha[1], arrfecha[2])
       @ingresos << {cantidad: cantidad, fecha: fecha, descripcion: descripcion }
       if cantidad <= 0
       puts "No tiene ingresos"
       else
       puts "Ingreso exitoso"
       end
    end

    def egresos(cantidad, fecha, descripcion)
       arrfecha = fecha.split("-").map {|c| c.to_i}
       fechafinal = Date.new(arrfecha[0], arrfecha[1], arrfecha[2])
       @ingresos << {cantidad: cantidad, fecha: fecha, descripcion: descripcion }
    end

    def saldo_mes(mes)
        if mes == @mont
          @ingresos.each do |element|
          puts "Tus ingresos en el mes " + element[fechafinal[1]] + "fueron " + element["cantidad"]
        end
        else
        puts "No tienes ingresos en ese mes"
     end
   end

end





g1 = Costos.new
hola = g1.ingresos(0, "2018-02-26", "Servicios")
puts hola
