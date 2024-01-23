# 4. Design regex for mobile number, email address, name, gender(M / F) and amount
# Personal Info module extract all the details from given text and display it.
module PersonInfo
  def self.mobile_number(mystr)
    puts "Mobile Number : #{mystr.match(/\d{10}/)}"
  end

  def self.email_address(mystr)
    puts "Email : #{mystr.match(/[\w.]+@[\w.]+/)}"
  end

  def self.name(mystr)
    puts "Name : #{mystr.match(/[A-Z]\w+ [A-Z]\w+/)}"
  end

  def self.gender(mystr)
    puts "Gender : #{mystr.match(/Gender - \w/)}"
  end

  def self.amount(mystr)
    puts "Salary : #{mystr.match(/Rs.\d+/)}"
  end

  def self.details(mystr)
    puts 'All Details'
    name(mystr)
    email_address(mystr)
    mobile_number(mystr)
    gender(mystr)
    amount(mystr)
  end
end

def main(mystr)
  i = 1
  while i.positive?
    puts '1.Name'
    puts '2.Email Address'
    puts '3.Mobile Number'
    puts '4.Gender'
    puts '5.Salary'
    puts '6.All Details'
    puts '7.Exit'
    puts 'Enter your choice: '
    choice = gets.chomp.to_i
    case choice
    when 1
      PersonInfo.name(mystr)
    when 2
      PersonInfo.email_address(mystr)
    when 3
      PersonInfo.mobile_number(mystr)
    when 4
      PersonInfo.gender(mystr)
    when 5
      PersonInfo.amount(mystr)
    when 6
      PersonInfo.details(mystr)
    else
      exit
    end
    i += 1
  end
end
mystr = 'Hello I am Prajjwalkumar Panzade my email id is prajjwalbpanzade22@gmail.com, Gender - M, amount = Rs.120000,my contact number = 9112422777'
main(mystr)
