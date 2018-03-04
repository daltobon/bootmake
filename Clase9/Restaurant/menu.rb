=begin
 Metodo que permita ver menú desde txt
 Metodo que permita agregar elementos al menu_comidas
 Metodo que permita consultar un producto por codigo
=end

require 'pry'
module Menu

    class Clase_menu
      attr_accessor :comidas

          def initialize
            @comidas = Hash.new
          end

          def principal
                comidas = File.foreach("productos.csv").grep(/00/)
                comidas.each do |element|
                  item = element.split(',')
                  comida = { valor: item[2], nombre: item[1], stock: item[3] }
                  @comidas[item[0]] = comida
              end
           end

           def menu
             puts @comidas
           end

          def consultar(codigo)
             comida = @comidas[codigo]
               puts "#{comida[:valor]} -- #{comida[:nombre]} --- #{comida[:stock]}"
            end
          end

  end

a = Menu::Clase_menu.new
a.principal
a.menu
a.consultar(gets.chomp)
