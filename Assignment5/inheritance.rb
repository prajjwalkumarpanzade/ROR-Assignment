class Animal
  def make_noise
    puts "I can make noise"
  end
end

class Dog < Animal
  def make_noise
    puts "woof woof"
  end
end

class Cat < Animal
  def make_noise
    puts "meow meow"
  end
end

animal = Animal.new
animal.make_noise

moti = Dog.new
moti.make_noise

mimi = Cat.new
mimi.make_noise
