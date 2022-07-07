# Exemplo de POLIMORFISMO

class Instrumento
  def escrever
    puts "Escrevendo"
  end  
end  

class Teclado < Instrumento
end

class Lapis < Instrumento
  def escrever
    puts "Escrevendo de lápis"
  end 
end

class Caneta < Instrumento
  def escrever
    puts "Escrevendo de caneta"
  end 
end   

#simples
# instrumentos = Caneta.new
# puts instrumentos.escrever

#avançado
instrumentos = [Lapis.new, Caneta.new, Teclado.new]
instrumentos.each do |instrumento|
  puts instrumento.escrever
end  

