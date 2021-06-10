class  Vehicle
  attr_accessor :brake :accelerate :turn :honk_horn
  def initialize
    @speed = 0
    @direction = "north"
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
class Car < Vehicle
  def initialize(input_options)
    super
    @fuel = input_options[:fuel]
    @make = input_options[:make]
    @model = input_options[:model]
  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  def ring_bell(input_options)
    super
    @type= input_options[:type]
    @weight = input_options[:weight]
    @model = input_options[:height]
    puts "Ring ring!"
  end
end
car1 = Car.new(fuel: "gasoline", make: "Volkswagen", model: "Jetta")
bike1 = Bike.new
p car.accelerate
p bike.accelerate

p bike.ring_bell
p car.honk_horn
