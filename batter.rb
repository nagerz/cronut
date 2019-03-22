class Batter < Record
  def initialize(batter_data)
   super(batter_data[:id], batter_data[:type])
  end
end
