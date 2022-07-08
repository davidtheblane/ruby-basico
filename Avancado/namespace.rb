    # :: criam um namespace onde podemos usar a palavra reservada puts, 
    # sem correr o risco de sobrescrever o metodo puts original.
# module ReverseWorld
#   def self.puts text
#       print text.reverse.to_s
#   end
# end  

# ReverseWorld::puts 'O resultado é'
# puts 'O resultado é'

  # Outro exemplo, self indica que o puts pertence ao module
module ReverseWorld
  def self.puts text
      print text.reverse.to_s
  end

  class Imprimir
    def call text
      print text
      print "---IMPRIMIR---"
    end
  end
end

imprimir = ReverseWorld::Imprimir.new
imprimir.call "O resultado é "
