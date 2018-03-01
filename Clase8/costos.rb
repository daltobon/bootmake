class Costos
  attr_accessor  :ingresos, :egresos, :total
      def initialize
        @ingresos = []
        @egresos = []
        @descripcion = ""
        @resumen_ingresos = 0
        @resumen_egresos = 0
        @total_cuenta = 0
      end

      def ingresos(cantidad, mes, descripcion)
        if mes >= 1 && mes <= 12
            @ingresos << { cantidad: cantidad, mes: mes, descripcion: descripcion }
        else
          raise ArgumentError.new("El mes no existe")
        end
      end

      def egresos(cantidad, mes, descripcion)
        if mes >= 1 && mes <= 12
          @egresos << { cantidad: cantidad, mes: mes, descripcion: descripcion }
        else
          raise ArgumentError.new("El mes no existe")
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
        egresos = resumen_egresos(mes)
        ingresos = resumen_ingresos(mes)
        puts "El balance del mes #{mes} es: #{ingresos-egresos}"
      end
end


       #    def total(mes)
       #      ingresos = 0
       #      egresos = 0
       #      @ingresos.each do |element|
       #       if mes == element[:mes]
       #         ingresos += element[:cantidad]
       #       @egresos.each do |other|
       #       if mes == other[:mes]
       #         egresos += other[:cantidad]
       #       end
       #     end
       #   end
       # end

add = Costos.new
b = add.ingresos(9000, 12, "Servicios")
c = add.ingresos(56000, 12, "transporte")

x = add.egresos(9000, 12, "Servicios")
y = add.egresos(8000, 12, "transporte")

e = add.resumen_ingresos(12)
puts e
z = add.resumen_egresos(12)
add.total(12)
