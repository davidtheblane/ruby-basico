class Mercado
  def initialize(produto)
    @produto = produto
  end

  def comprar 
    puts "Você comprou #{@produto.qtde} unidades do produto #{@produto.nome} no valor total de #{@produto.preco}"
  end
end