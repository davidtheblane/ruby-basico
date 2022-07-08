# => 1 Example 
# 5.times {puts "Exec the block"}

# => 2 Example
# sum = 0
# numbers = [5,10,5]
# numbers.each {|number| sum+=number}
# puts sum

# => 3 Example block multiline
# foo = {2 => 3, 4 => 5}

# foo.each do |key, value|
#   puts "key = #{key}"
#   puts "value = #{value}"
#   puts "key * value = #{key * value}"
#   puts "---"
# end

# => 4 Example - method that receives a block
# def foo
#   #Call the block
#   yield
#   yield
#   yield

# end

# foo {puts "Exec the block"}

# => 5 Example - verify if exist a block in the request
# def foo 
#   if block_given?
#     #Call the block
#     yield
#   else 
#     puts "Sem parametro do tipo bloco"
#   end
# end

# foo
# foo {puts "Com parâmetro do tipo bloco"}

# => 6 Example - Other way of pass and call a block
# it's allowed only one clock per call
# def foo(name, &block)
#   @name = name
#   block.call
# end

# foo('Davi') {puts "Hello #{@name}"}

# => 7 Example - Other way of pass and call a block
def foo(numbers, &block)
 if block_given?
   numbers.each do |key, value|
     block.call(key, value)
   end
 end
end
 
numbers = { 2 => 2, 3 => 3, 4 => 4 }
 
foo(numbers) do |key, value|
 puts "#{key} * #{value} = #{key * value}"
 puts "#{key} + #{value} = #{key + value}"
 puts "---"
end

