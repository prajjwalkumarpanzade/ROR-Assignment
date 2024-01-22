class Vehicle
  def initialize(brand,name,color)
    @brand = brand
    @name = name
    @color = color
  end

  def display_details
    puts "Brand : #{@brand}"
    puts "Name : #{@name}"
    puts "Color : #{@color}"
  end
end

car = Vehicle.new("Toyota","Land Cruser","Black")
car.display_details