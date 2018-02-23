
arr = IO.readlines ("students.txt")
5.times do |i|
  arr.shuffle!
puts arr.pop + " - " + arr.pop
end
