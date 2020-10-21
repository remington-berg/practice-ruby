class Transport
  def initialize(input_option)
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
end

class Car < Transport
  attr_reader :fuel, :make, :model

  def initialize(input_option)
    super
    @fuel = input_option[:fuel]
    @make = input_option[:make]
    @model = input_option[:model]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Transport
  attr_reader :type, :weight

  def initialize(input_option)
    super
    @type = input_option[:type]
    @weight = input_option[:weight]
  end

  def ring_bell
    puts "Ring ring!"
  end
end

car1 = Car.new({ fuel: 45, make: "honda", model: "accord" })
bike1 = Bike.new({ type: "mountain", weight: 16 })
puts car1.accelerate
puts bike1.accelerate
car1.honk_horn
bike1.ring_bell
puts car1.make
