require './topping'
require './batter'

class Item
  attr_reader :id, :type, :name, :ppu, :batters, :toppings

  def initialize(data)
    @id = data["id"]
    @type = data["type"]
    @name = data["name"]
    @ppu = data["ppu"]
    @batters = make_batters(data["batters"]["batter"])
    @toppings = make_toppings(data["topping"])
  end

  def make_batters(batters)
    batters.each do |batter_data|
      Batter.new(batter_data)
    end
  end

  def make_toppings(toppings)
    toppings.each do |topping_data|
      Topping.new(topping_data)
    end
  end

end
