class Candy
  attr_reader :name, :price, :color
  attr_writer :color
end
  
  def initialize (input_options)
    @name = input_options[:name]
    @price = input_options[:price]
    @color = input_options[:color]
  end
  def color = (input_color)
    @color = input_color
  end

  def print_info
    puts "The #{name} is #{color} that costs $#{price}."
  end
end

candy1 = Candy.new(name:"Starburst", price: 0.99, color : "yellow")
candy2 = Candy.new(name: "Twix", price: 1.25, color: "bronze")
candy3 = Candy.new(name: "Snickers",price: 1.49, color: "brown")

candy1.print_info
p candy1.price
p candy3.color