require "cpf_cnpj"

def verificaCPF(number)
  if CPF.valid?(number)
    cpf = CPF.new(number)

    puts "O CPF #{cpf.formatted} é Válido!"
  else
    puts "CPF não é Válido!"
  end
end

print "Digite o número do seu CPF sem espaços nem caracteres:\n"
number = gets.chomp.to_i

verificaCPF(number)

