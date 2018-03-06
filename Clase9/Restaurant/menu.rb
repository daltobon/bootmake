=begin
 Metodo que permita ver menú desde txt
 Metodo que permita agregar elementos al menu_comidas
 Metodo que permita consultar un producto por codigo
=end
require 'pry'

module Menu

    class Clase_menu
      attr_accessor :comidas, :new_producto

          def initialize
            @comidas = Hash.new
            @codigo = 0
          end

          def principal
            comidas = File.foreach("productos.csv").grep(/00/)
            comidas.each do |element|
            item = element.split(',')
            comida = {codigo: item[0], valor: item[2.to_i], nombre: item[1], stock: item[3] }
            @comidas[item[0]] = comida
            item[0] = @codigo
            end
          end

          def agregar(new_codigo)
            if @comidas =  new_codigo
             puts "El producto ya existe por favor verifique"
            else element = gets.chomp
              File.open("productos.csv", 'a+') {|f| f.write(element.to_s)}
            end
          end

          def consultar(codigo)
            if comida = @comidas[codigo]
              puts "#{comida[:valor].to_i}      #{comida[:nombre]}      #{comida[:stock]}"
            else
              puts "No existe en el menú"
            end
          end

          def imprimir(codigo_new)

            if codigo_old = codigo_new
              puts "El producto ya existe por favor verifique"
             else element = gets.chomp
               File.open("productos.csv", 'a+') {|f| f.write(element.to_s)}
             end
           end

      end
  end

a = Menu::Clase_menu.new
a.principal
a.imprimir("C0202")
