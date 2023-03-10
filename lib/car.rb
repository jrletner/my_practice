class MyCar
  attr_accessor :color
  attr_reader :year, :model

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def speed_up(number)
    @speed += number
    puts "You push the gas and accelerate #{number} mph"
  end

  def brake(number)
    @speed -= number
    puts "You press the brake and decelarate #{number} mph"
  end

  def shut_off
    @speed = 0
    puts "You come to a complete stop and shut down to #{@speed} mph"
  end

  def current_speed
    puts "You are now going #{@speed} mph"
  end

  def spray_paint(color)
    self.color = color
    puts "You have spray painted your car to a new color: #{color}"
  end

  def to_s
    puts "My car is a #{color}, #{year}, #{model}"
  end
end

MalibuMaggie = MyCar.new(2016, "Gray", "Chevy")
MalibuMaggie.speed_up(50)
MalibuMaggie.current_speed
MalibuMaggie.brake(20)
MalibuMaggie.current_speed
MalibuMaggie.shut_off
MalibuMaggie.current_speed
MalibuMaggie.color = "red"
MalibuMaggie.spray_paint("purple")
MyCar.gas_mileage(13, 351)
puts MalibuMaggie
