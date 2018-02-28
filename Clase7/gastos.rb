require 'date'

class Costos
 attr_accessor :ingresos, :egresos, :total

  def initialize
      @ingresos = []
      @egresos = 0
      @mes = 0
      @total = 0
  end

  #Metodo para Ingresos
    def ingresos(cantidad, fecha, descripcion)
       arrfecha = fecha.split("-").map {|c| c.to_i}
       fechafinal = Date.new(arrfecha[0], arrfecha[1], arrfecha[2])
       @ingresos << {cantidad: cantidad, fecha: fechafinal, descripcion: descripcion }
    end

  #Metodo para Egresos
    def egresos(cantidad, fecha, descripcion)
       arrfecha = fecha.split("-").map {|c| c.to_i}
       fechafinal = Date.new(arrfecha[0], arrfecha[1], arrfecha[2])
       binding.pry
       @ingresos << {cantidad: cantidad, fecha: fechafinal, descripcion: descripcion }
    end

  #Metdo para meses
    def saldo_mes(mes)
        @ingresos.each do |ingreso|
           if mes == ingreso[:fecha].month
           puts "Tus ingresos en el mes #{mes} fueron de #{ingreso[:cantidad]}"
          else
            puts "No tienes ingresos en el mes #{mes}"
          end
        end
    end

    def total(ingresototal, mes)
        @ingresos.each do |ingreso|
            @egresos.each do |egreso|
      if mes == ingreso[:fecha].month && egreso[:fecha].month
        ingresototal =


      end
    end
end

g1 = Costos.new
servicios = g1.ingresos(9000, "2018-02-08", "Servicios")

puts servicios

saldo = g1.saldo_mes(2)
puts saldo

saldototal = g1.total(2)
puts saldototal
