class Employee
  def salary
    puts "Calculando salario"
  end
end

class Manager
  def salary
    puts "Calculando bonos"
    super
  end
end

p1 = Manager.new
p1.salary

# Pendiente hacer que funcione
