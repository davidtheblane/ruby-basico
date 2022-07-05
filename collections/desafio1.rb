numbers = []

print "Digite o primeiro numero: "
number1 = gets.chomp.to_i

print "Digite o primeiro numero: "
number2 = gets.chomp.to_i

print "Digite o primeiro numero: "
number3 = gets.chomp.to_i


numbers.push(number1, number2, number3)

numbersPotency = numbers.map do |number|
  number*number
end

puts numbersPotency


