puts "Enter IP address "       #Print message.
IP_add = gets.chomp            #Input from user.
split = IP_add.split('.',0)    #Split input on .
cls = split[0].to_i            #convert 0 index of splited array to integer
if (1..127) === cls            #Checking between classes 
  puts "Class A"

elsif (128..191) === cls
  puts "Class B"

elsif (192..223) === cls
  puts "Class C"
elsif (224..239) === cls
  puts "Class D"

elsif (240..254) === cls
  puts "Class E"
  
end


