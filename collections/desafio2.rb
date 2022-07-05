collection = {}

3.times do
print "Insira um estado: "
estado = gets.chomp
print "Insira um municipio: "
municipio = gets.chomp
collection[:"#{estado}"] = municipio

end

# collection = {:"Sao Paulo"=>"Santos", :Pernambuco=>"Olinda", :Para=>"Belem"}

collection.each do |estado, municipio|
  puts "Uma das chaves é #{estado} e o seu valor é #{municipio}"
end

