require 'net/http'

# reqres.in = site chamado
# 443 = que vamos nos conectar, 443 é a porta do SSL
https = Net::HTTP.new('reqres.in', 443)

# para fazer chamada https
https.use_ssl = true

response = https.get('/api/users')
#status code
puts response.code
#status message
puts response.message
#body (json)
puts response.body

