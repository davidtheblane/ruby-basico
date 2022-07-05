puts "Bem vindo a calculadora, qual operação você gostaria de fazer?"
print "1- Adição "
print "2- Subtração "
print "3- Multiplicação "
print "4- Divisão "
print "0- Sair "
operation = gets.chomp.to_i

unless operation == 0

  print "Digite o pimeiro numero: "
  number1 = gets.chomp.to_i
  print "Digite o segundo numero: "
  number2 = gets.chomp.to_i

  case operation
  when 1
  puts  "Resultado = #{number1 + number2}"
  when 2
    puts "Resultado = #{number1 - number2}"
  when 3
    puts "Resultado = #{number1 * number2}"
  when 4
    puts "Resultado = #{number1 / number2}"
  else
    puts "Operação inválida"
  end

else
  puts "Fim da operação"
end

  
