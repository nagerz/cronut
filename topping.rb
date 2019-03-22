class Topping < Record
  def initialize(topping_data)
   super(topping_data[:id], topping_data[:type])
  end
end
