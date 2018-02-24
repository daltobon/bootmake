class Person
  @@people_count = 0

  def initialize
    @@people_count += 1
  end

  def self.people_count
      @@people_count
  end
end

  puts Person.people_count

  Person.new
  puts Person.people_count

  Person.new
  puts Person.people_count

p1 = Person.new
puts p1.people_count # Pertenece a la clase no a la instancia
