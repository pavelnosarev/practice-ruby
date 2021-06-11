module Printable
  puts "The #{name} is #{color} that costs $#{price}."
end
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


class Food 
  attr_reader :name, :price, :color
  attr_writer :color
end
  def initialize
    super
  end
end


candy1.print_info
p candy1.price
p candy3.color
p food1.name