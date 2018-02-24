class Employee
  def initialize
    puts "Constructor PADRE"
  end
end

class Manager
  def initialize
    super

    end
end

p1 = Manager.new
puts p1
