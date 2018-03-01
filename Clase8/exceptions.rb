
class Excepciones

  def excepcion
    begin
      1 / 0
    rescue => e
      puts e.message
      puts e.backtrace.join("\n")
    end
   end

end

a = Excepciones.new
e = a.excepcion
