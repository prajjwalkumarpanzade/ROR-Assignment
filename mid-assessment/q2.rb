# 2. Write a program for students to print their school level according to grade e.g -
# if grade is between 1-5 return to elementary
# if grade is between 6-8 return middle school
# if grade is between 9-12 return high school
# if grade is between otherwise return college

def school_level(grade)
  if grade > 1
    case grade
    when 1..5
      puts 'Elementary'
    when 6..8
      puts 'Middle School'
    when 9..12
      puts 'High School'
    else
      puts 'College'
    end
  else
    puts 'Enter valid grade'
  end
end
puts 'Enter your grade: '
grade = gets.chomp.to_i
school_level(grade)
