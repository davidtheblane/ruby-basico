module Person
  class Juridic
    attr_reader :add
    def initialize(nome, cnpj)
    puts "Pessoa Jurídica Adicionada"
    puts "nome: #{nome}"
    puts "cnpj: #{cnpj}"
    end
  end

  class Physical
    attr_reader :add
    def initialize(nome, cnpj)
    puts "Pessoa Física Adicionada"
    puts "nome: #{nome}"
    puts "cnpj: #{cnpj}"
    end
  end
end      

Person::Juridic.new('M. C. Investimentos', '4241.123/0001').add
puts decoracao = '#' * 30
Person::Physical.new('José Almeida', '425.123.123-123').add
