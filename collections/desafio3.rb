Numbers = {a: 10, b: 302, c: 20, d: 25, e: 15}
result = [0]

Numbers.each do |key, value|
  if value > result.first
    result.shift
    result.push(value)
  end
end

puts result