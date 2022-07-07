class Esportista
  def competir
    puts "Participando de uma competição"
  end 
end   

class JogadorDeFutebol < Esportista
  def correr
    puts "Correndo atrás da bola"
  end 
end 

class Maratonista < Esportista
  def correr
    puts "Percorrendo o circuito"
  end 
end  

jogador = JogadorDeFutebol.new
maratonista = Maratonista.new

#instanciando um por vez
puts jogador.competir
puts jogador.correr
puts maratonista.competir
pust maratonista.correr

#instanciando varios
# esportistas = [JogadorDeFutebol.new, Maratonista.new]
# puts esportistas[1].correr
# puts esportistas[2].correr