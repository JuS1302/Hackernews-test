# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:

#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# puts "seed generation"

# post_test = Post.create!(title: "test", typepost: "test", url: "http:/test.fr", score: 13, author: "Julie")

# puts "seed upload"

require "json"
require "open-uri"

puts "seed desctruction"

Post.destroy_all

puts "seed generation"

url = "https://hacker-news.firebaseio.com/v0/topstories.json"
user_serialized = URI.parse(url).read
user = JSON.parse(user_serialized)

puts "#{user}"

user.first(30).each do |id|
api = "https://hacker-news.firebaseio.com/v0/item/#{id}.json"
api_serialized = URI.parse(api).read
data_api = JSON.parse(api_serialized)
Post.create!(title:"#{data_api["title"]}",typepost:"#{data_api["type"]}", url:"#{data_api["url"]}", score:"#{data_api["score"]}", author:"#{data_api["by"]}")
end

puts "seed upload"
