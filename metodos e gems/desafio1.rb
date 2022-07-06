def potencia(number, expoente)
puts number ** expoente
end

print "digite um numero: "
number = gets.chomp.to_i

print "digite um expoente: "
expoente = gets.chomp.to_i 

potencia(number, expoente)