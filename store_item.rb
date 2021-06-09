class Candy
  attr_reader :name, :price, :color
  
  def initialize (input_name, input_price,input_color)
    @name = input_name
    @price = input_price
    @color = input_color
  end
  def color = (input_color)
    @color = input_color
  end

  def print_info
    puts "The #{name} is #{color} that costs $#{price}."
end

candy1 = Candy.new("Starburst", 0.99, "yellow")
candy2 = Candy.new("Twix", 1.25, "bronze")
candy3 = Candy.new("Snickers",1.49, "brown")

candy1.print_info
p candy1.price
p candy3.color