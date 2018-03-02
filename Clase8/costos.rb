class Costos
      def initialize
        @ingresos = []
        @egresos = []
        @resumen_ingresos = 0
        @resumen_egresos = 0

      end

      def ingresos(cantidad, mes, descripcion)
        if mes.to_i >= 1 && mes.to_i <= 12

        else
          puts "El mes no existe"
        end
      end

  def egresos(cantidad, mes, descripcion)
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
          acum += element[:cantidad]
          end
        end
        acum
      end

      def total(mes)
      end
end

# add = Costos.new
# b = add.ingresos(9000, 12, "Servicios")
# c = add.ingresos(56000, 12, "transporte")
#
# y = add.egresos(8000, 12, "transporte")
#
# e = add.resumen_ingresos(12)
# puts e
# z = add.resumen_egresos(12)
# add.total(12)
