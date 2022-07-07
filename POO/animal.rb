# Exemplo de HERANÇA
class Animal
  def pular
    puts 'Pulando'
  end 

  def dormir
    puts 'ZZzzzz'
  end 
end

class Cachorro < Animal
  def latir
    puts 'Au au!'
  end 
end     

cachorro = Cachorro.new

puts cachorro.pular
puts cachorro.dormir
puts cachorro.latir

