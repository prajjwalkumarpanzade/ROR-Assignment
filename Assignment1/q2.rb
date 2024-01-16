#2. WAP for students to print their school level according to grade
#e.g -
#if grade is between 1-5 return elementary
#if grade is between 6-8 return middle school
#if grade is between 9-12 return high school
#if grade is between otherwise return college


puts "Enter grade"
grade = gets.to_i

if (1..5) === grade
 puts "Elementary"

elsif (6..8) === grade
 puts "Middle School"

elsif (9..12) ===  grade
 puts "High School"

else 
 puts "College"

end 
