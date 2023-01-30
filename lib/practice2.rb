class GoodDog
  DOG_YEARS = 7
  @@number_of_dogs = 0

  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n
    self.age = a * DOG_YEARS
    @@number_of_dogs += 1
  end

  def self.total_number_of_dogs
    @@number_of_dogs
  end
end

puts GoodDog.total_number_of_dogs
dog1 = GoodDog.new("Rolo", 1)
dog2 = GoodDog.new("Effi", 17)
puts dog1.age
puts dog2.age
p dog1
p dog2

puts GoodDog.total_number_of_dogs
