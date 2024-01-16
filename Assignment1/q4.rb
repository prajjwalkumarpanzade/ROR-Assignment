mystr = "Hello I am Prajjwalkumar Panzade my email id is prajjwalbpanzade22@gmail.com, Gender - M, amount = Rs.120000,my contact number = 9112422777"

name = name = mystr.match(/[A-Z]\w+ [A-Z]\w+/)[0]    
puts "Name #{name}" 

email = mystr.match(/[\w.]+@[\w.]+/)[0]
puts "Email #{email}"

number = mystr.match(/\d{10}/)
puts "Number =  #{number}"

gender = mystr.match(/Gender - \w/)[0]
puts "Gender #{gender}"

amount = mystr.match(/Rs.\d+/)
puts "amount #{amount}" 

