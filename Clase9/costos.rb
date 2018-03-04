class Costos
  attr_accessor  :ingresos, :egresos
      def initialize
        @ingresos = []
        @egresos = []
        @resumen_ingresos = 0
        @resumen_egresos = 0
      end

      def ingresos(cantidad, mes, descripcion)
        if mes.to_i >= 1 && mes.to_i <= 12
          @ingresos << { cantidad: cantidad.to_i, mes: mes.to_i, descripcion: descripcion }
        else
          puts "El mes no existe"
        end
      end

      def egresos(cantidad, mes, descripcion)
        if mes.to_i >= 1 && mes.to_i <= 12 && cantidad >= @resumen_ingresos
          @egresos << { cantidad: cantidad.to_i, mes: mes.to_i, descripcion: descripcion }
            30.times { print "*"}
              print "LA CANTIDAD A GASTAR NO ESTÁ DISPONIBLE"
            30.times { print "*"}
          puts
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
        @resumen_ingresos = acum
      end

      def resumen_egresos(mes)
          acum = 0
          @egresos.each do |element|
          if mes == element[:mes]
          acum += element[:cantidad]
          end
        end
       @resumen_egresos = acum
      end

      def total(mes)
        egresos = resumen_egresos(mes.to_i)
        ingresos = resumen_ingresos(mes.to_i)
      end
end
