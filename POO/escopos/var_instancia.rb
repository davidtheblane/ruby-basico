class User
  def add(name)
    @name = name
    puts "user adicionado"
    hello
  end 

  def hello
    puts "Seja bem vindo, #{@name}!"
  end
end

user = User.new
user.add('João')
