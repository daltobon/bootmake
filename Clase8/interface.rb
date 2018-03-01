require_relative 'costos.rb'

  class Interface
    attr_accessor :ingresos, :egresos

    def initialize
      @ingresos = Hash.new
      @egresos = Hash.new
      @resumen_ingresos = Costos.new
      @resumen_egresos = Costos.new

    end

    def run
      puts "GASTOS POR MES"
      loop do
        system "clear"
        puts "1) - Agregar Ingreso (Valor, mes, descripcion)"
        puts "2) - Agregar Egreso (Valor, mes, descripcion)"
        puts "3) - COnsultar ingresos por mes"
        puts "4) - Consultar egresos por mes"
        puts "5) - Consultar balance por mes"
        puts "s - Salir de la applicación"
        input = gets.chomp{}
        puts
puts
      case input
      when '1'
        print "Agrega el ingreso: "
        @ingresos = gets.chomp

      when '4'
        print "Ingresa el mes: "
        mes = gets.chomp
        puts @ingresos.resumen_ingresos(mes)

      when 's'
          break
        end
      end
       puts "Hasta pronto!"
      end
    end

  n = Interface.new
  n.run
