class Costos
  attr_accessor  :ingresos, :egresos, :total
      def initialize
        @ingresos = []
        @egresos = []
        @resumen_ingresos = 0
        @resumen_egresos = 0
        @total = 0
      end

      def ingresos(cantidad, mes, descripcion)
        if mes.to_i >= 1 && mes.to_i <= 12
            @ingresos << { cantidad: cantidad.to_i, mes: mes.to_i, descripcion: descripcion }
        else
          puts "El mes no existe"
        end
      end

      def egresos(cantidad, mes, descripcion)
        if mes.to_i >= 1 && mes.to_i <= 12
          @egresos << { cantidad: cantidad.to_i, mes: mes.to_i, descripcion: descripcion }
        else
          30.times { print "*"}
          print "  El mes #{mes} no existe, verifica  "
          30.times { print "*"}
          puts
        end
      end

      def resumen_ingresos(mes)
        acum = 0
        @ingresos.each do |element|
          if mes == element[:mes]
          acum += element[:cantidad]
          end
        end
        acum
      end

      def resumen_egresos(mes)
          acum = 0
          @egresos.each do |element|
          if mes == element[:mes]
          acum += element[:cantidad]
          end
        end
        acum
      end

      def total(mes)
        egresos = resumen_egresos(mes.to_i)
        ingresos = resumen_ingresos(mes.to_i)
        puts "El balance del mes #{mes.to_i} es: #{ingresos-egresos}"
      end
end

# add = Costos.new
# b = add.ingresos(9000, 12, "Servicios")
# c = add.ingresos(56000, 12, "transporte")
#
# x = add.egresos(7000, 12, "Servicios")
# y = add.egresos(8000, 12, "transporte")
#
# e = add.resumen_ingresos(12)
# puts e
# z = add.resumen_egresos(12)
# add.total(12)
