num = rand(10)
print "Adivina un numero del 1 al 10: "
i = gets.chomp.to_i

if num == i
  puts "Ganaste!"
else
  puts "Perdiste!"
end


# puts i == num ? "Ganaste" : "Perdiste"
