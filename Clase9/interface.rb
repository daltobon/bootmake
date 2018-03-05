require_relative 'costos.rb'

  class Interface
    attr_accessor :ingresos, :egresos

    def initialize
      @app = Costos.new
      @ingresos = 0
      @egresos = 0
      @resumen_ingresos = 0
      @resumen_egresos = 0
      @total = 0
    end

    def run
      system "clear"
      puts "GASTOS POR MES"
      loop do
        puts "  1) - Agregar Ingreso (Valor, mes, descripcion)"
        puts "  2) - Agregar Egreso (Valor, mes, descripcion)"
        puts "  3) - COnsultar ingresos por mes"
        puts "  4) - Consultar egresos por mes"
        puts "  5) - Consultar balance por mes"
        print " x) - Salir de la applicación   "
        70.times {print "+"}
        puts
        input = gets.chomp
        puts

      case input
      when '1'
        puts "Agrega el ingreso: "
        print "Cantidad: "
        cantidad = gets.chomp.to_i
        print "Mes: "
        mes = gets.chomp.to_i
        print "descripcion: "
        descripcion = gets.chomp
        i = @app.ingresos(cantidad, mes, descripcion)
        puts "#{i} ha sido añadido"
        puts

      when '2'
        puts "Agrega el egreso: "
        print "Cantidad: "
        cantidad = gets.chomp.to_i
        print "Mes: "
        mes = gets.chomp.to_i
        print "descripcion: "
        descripcion = gets.chomp
        @app.egresos(cantidad, mes, descripcion)

      when '3'
        print "   Ingresa el mes: "
        mes = gets.chomp.to_i
        totalmes = @app.resumen_ingresos(mes)
        puts "TUS INGRESOS EN EL MES #{mes} FUE DE #{totalmes}"

      when '4'
        print "   Ingresa el mes: "
        mes = gets.chomp.to_i
        totalmes = @app.resumen_ingresos - @app.resumen_egresos
        puts "TUS EGRESOS EN EL MES #{mes} FUE DE #{totalmes}"

      when '5'
        print "   Ingresa el mes: "
        mes = gets.chomp.to_i
        totalmes = @app.total(mes)
        puts "TU BALANCE EN EL MES #{mes} FUE DE #{totalmes}"

      when 'x'
          break
        end
      end
       puts "¡Hasta pronto!"
      end
    end
  n = Interface.new
  n.run
