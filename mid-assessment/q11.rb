
# Implement a program to calculate the area of a circle, rectangle, or triangle based on user input.
def area_circle(radius)
  area = 3.14 * radius * radius
  puts "Area of circle is #{area}"
end

def area_rectangle(length, width)
  area = length * width
  puts "Area of rectangle is #{area}"
end

def area_triangle(base, height)
  area = 0.5 * base * height
  puts "Area of triangle is #{area}"
end
i = 1
while i.positive?
  print "\nEnter \n 1 Area of circle \n 2 Area of rectangle \n 3 Area of triangle \n 4 Exit \n: "
  choice = gets.chomp.to_i
  case choice
  when 1
    print 'Enter radius: '
    radius = gets.chomp.to_i
    area_circle(radius)
  when 2
    print 'Enter length: '
    length = gets.chomp.to_i
    print 'Enter width: '
    width = gets.chomp.to_i
    area_rectangle(length, width)
  when 3
    print 'Enter base: '
    base = gets.chomp.to_i
    print 'Enter height: '
    height = gets.chomp.to_i
    area_triangle(base, height)
  else
    exit
  end
end
