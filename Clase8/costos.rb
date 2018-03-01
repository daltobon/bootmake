class Costos
  attr_accessor  :egresos, :total
      def initialize
        @ingresos = []
        @egresos = []
        @descripcion = ""
        @resumen_ingresos = [0
        @resumen_egresos = 0
        @total_ingresos = 0
      end

      def ingresos(cantidad, mes, descripcion)
        if mes >= 1 && mes <= 12
            @ingresos << { cantidad: cantidad, mes: mes, descripcion: descripcion }

        else
          puts "El mes no existe, verifique"
        end
      end

      def egresos(cantidad, mes, descripcion)
        if mes >= 1 && mes <= 12
          @egresos << { cantidad: cantidad, mes: mes, descripcion: descripcion }
        else
          puts "El mes no existe, verifique"
        end
      end

      def resumen_ingresos(mes)
          acum = 0
          @ingresos.each |element|
          if mes == element[:mes]
          acum += element[:cantidad]
          end
      end
      puts "Tus ingresos en el mes #{mes} fueron de #{acum}"
    end

  end

add = Costos.new
b = add.ingresos(9000, 12, "Servicios")
c = add.ingresos(56000, 12, "transporte")
puts b

e = add.resumen_ingresos(12)
puts e
