require 'json'
require 'pry'
require './item.rb'

class Parser

  def self.parse
    file = File.read("./data/cronut.json")
    item_array = JSON.parse(file)["items"]["item"]

    item_array.each do |item_data|
      item = Item.new(item_data)
      binding.pry
    end
  end
end

Parser.parse
