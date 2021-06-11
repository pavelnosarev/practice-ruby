class Food 
  attr_reader :name, :price, :color
  attr_writer :color
end
  def initialize
    super
  end
end
food1 = Food.new(name: "jerky", price: 5.00, color: "red")
food2 = Food.new(name: "chips", price: 1.99, color: "yellow")