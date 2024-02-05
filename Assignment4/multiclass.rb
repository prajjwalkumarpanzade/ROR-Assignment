#Class creation

class Employee 
  def initialize(id,name,emailid,phone,salary)
    @id = id
    @name = name
    @emailid = emailid
    @phone = phone
    @salary = salary
  end
  def display_details
    puts "Employee ID : #{@id}"
    puts "Employee Name : #{@name}"
    puts "Employee Email ID : #{@email}"
    puts "Employee Phone : #{@phone}"
  end
  def display_salary
    puts "Salary : #{@salary}"
  end
  def increment_salary_by_amount(amount)
    @salary += amount
    puts "Salary : #{@salary}"
  end
  def increment_salary_by_percentage(percentage)
    @salary += @salary * (percentage/100.0)
    puts "Salary : #{@salary}"
  end
end

#Object Creation

emp1 = Employee.new(1,"Raj","raj@gmail.com",9112422666,10000)
emp1.display_details
emp1.display_salary
emp1.increment_salary_by_amount(5000)
emp1.increment_salary_by_percentage(10)
