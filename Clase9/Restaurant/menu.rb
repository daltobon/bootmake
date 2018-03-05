=begin
 Metodo que permita ver menú desde txt
 Metodo que permita agregar elementos al menu_comidas
 Metodo que permita consultar un producto por codigo
=end
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
              comida = { nombre: item[1], valor: item[2],  stock: item[3] }
            @comidas[item[0]] = comida
            end
          end

          def agregar(codigo_new) #Metodo para agregar elementos al archivo
            if @comidas[] = codigo_new
              puts "El codigo #{:codigo} ya existe por favor verifique"
            else
              elemento = gets.chomp
              File.open("productos.csv", 'a+') {|f| f.write(elemento.to_s)}
            end
          end

          def consultar(codigo)
            if comida = @comidas[codigo]
              puts "#{comida[:valor]}      #{comida[:nombre]}      #{comida[:stock]}"
            else
              puts "NO SE ENCONTRO EL PRODUCTO"
            end
          end
    end
  end

a = Menu::Clase_menu.new
c = a.consultar("C0021")
puts c
