require 'json'
require 'pry'
require './item'


file = File.read("./data/cronut.json")
item_array = JSON.parse(file)["items"]["item"]

items = []

item_array.each do |item_data|
  items << Item.new(item_data)
end
