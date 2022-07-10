# require 'nokogiri'
# require 'net/http'
 
# https = Net::HTTP.new('example.com', 443)
# # para fazer chamadas https
# https.use_ssl = true
 
# response = https.get("/")
 
# doc = Nokogiri::HTML(response.body)
 
# h1 = doc.at('h1')
 
# puts h1

##########

# require 'nokogiri'
# require 'net/http'
 
# https = Net::HTTP.new('onebitcode.com', 443)
# # para fazer chamadas https
# https.use_ssl = true
 
# response = https.get("/tutoriais/")
 
# doc = Nokogiri::HTML(response.body)
 
# last_post = doc.css('h3 a')
# last_post.each do |link|
#   puts link.content
# end

##########

require 'nokogiri'
require 'net/http'
 
https = Net::HTTP.new('onebitcode.com', 443)
# para fazer chamadas https
https.use_ssl = true
 
response = https.get("/tutoriais/")
 
doc = Nokogiri::HTML(response.body)
 
doc.search('h3 a').each do |a|
puts a.content
end


