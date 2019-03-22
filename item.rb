require './topping'
require './batter'
require './record'

class Item < Record
  attr_reader :name, :ppu, :batters, :toppings

  def initialize(data)
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
