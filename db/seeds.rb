# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User: username (has_many gifs)
# Gif: title, user_id, likes => default to to 0 (belongs_to user)

require 'net/http'
require 'json'
url="http://api.giphy.com/v1/stickers/search?q=ryan+gosling&api_key=7mql7m8uDM0nBuR8kkv2o9nCWK6JtreF&limit=5"
resp = Net::HTTP.get_response(URI.parse(url))
buffer = resp.body
result = JSON.parse(buffer)
puts result


