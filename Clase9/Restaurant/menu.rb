=begin
 Metodo que permita ver menú desde txt
 Metodo que permita agregar elementos al menu_comidas
 Metodo que permita consultar un producto por codigo
=end

require 'pry'
module Menu

    class Clase_menu
      attr_accessor :comidas, :codigo, :nombre, :valor, :stok, :productos

      def initialize
        @comidas = Hash.new
        @productos = Hash.new

      end

        def principal
            num_comidas = 0
              comidas = File.foreach("productos.csv").grep(/00/)
              comidas.each do |element|
                item = element.split(',')
                comida = { valor: item[2], nombre: item[1], stock: item[3] }
                @comidas[item[0]] = comida
              num_comidas += 1
            end
            puts @comidas["C001"]
            end

          def consultar

          end



       end
  end
a = Menu::Clase_menu.new.principal
# l  = a.menu_comidas("C001")
# puts l
