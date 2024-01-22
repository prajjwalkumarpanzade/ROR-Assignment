#Class creation
class Animal
  def initialize(no_of_legs)
    @no_of_legs = no_of_legs
    puts "I am an animal"
  end
end
class Cat < Animal
  def initialize(make_noise,no_of_legs)
    @make_noise = make_noise
    super(no_of_legs)
    puts "I am a cat"
    puts "I make a noise #{@make_noise}"
  end
end
#Object Creation
animal = Animal.new(4)
cat = Cat.new("meow",4)

