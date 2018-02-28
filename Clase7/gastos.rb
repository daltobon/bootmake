require 'date'
class Costos
 attr_accessor :ingresos, :egreso, :mes

  def initialize
      @ingresos = []
      @mes = (1..12)
  end

  #Metodo para Ingresos
    def ingresos(cantidad, fecha, descripcion)
       arrfecha = fecha.split("-").map {|c| c.to_i}
       fechafinal = Date.new(arrfecha[0], arrfecha[1], arrfecha[2])
       @ingresos << {cantidad: cantidad, fecha: fechafinal, descripcion: descripcion }
    end

    def egresos(cantidad, fecha, descripcion)
       arrfecha = fecha.split("-").map {|c| c.to_i}
       fechafinal = Date.new(arrfecha[0], arrfecha[1], arrfecha[2])
       @ingresos << {cantidad: cantidad, fecha: fechafinal, descripcion: descripcion }
    end

    def saldo_mes(mes)
        @ingresos.each do |element|
          if mes == element[:fecha].month
           puts "#{element[:cantidad]}"
          else
            puts "No tienes ingresos en ese mes"
          end
        end
      end
   end



g1 = Costos.new
hola = g1.ingresos(990, "2018-02-26", "Servicios")
puts hola

saldo = g1.saldo_mes(2)
puts saldo
