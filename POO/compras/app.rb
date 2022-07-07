require_relative 'produto'
require_relative 'mercado'

produto = Produto.new
produto.nome = "Caneta Bic Azul"
produto.preco = "R$ 36,00"
produto.qtde = '50'

mercado = Mercado.new(produto)
mercado.comprar
