names = ["ironman","captainamerica","hulk","blackwidow","thor"]  #List of words
name = names[rand(names.length)]     #Choosing random word from list 
name = name.chars                    #converting to array of letters
puts "Welcome to Hangman Game."
puts "Guess the name of marvel character"
puts ""
blanks = ('_'*name.length).chars 
puts "You have #{name.length} no. of chances"
print blanks.join('')
puts ""
j = 0
while j < ((name.length))  do       #Loop for number of chances
  print "Guess letter = "
  input_letter = gets.chomp         #Guess letter
  puts ""
  for i in (0..name.length-1)  do   #Replacing _ with actual gussed letters
    if name[i] == input_letter      #checking guessed letter with original word
      blanks.delete_at(i)           #Deleting _ from array
      blanks.insert(i,input_letter) #Insert guessed letter in the _ array
      puts ""
    end
  end
  if blanks.include?(input_letter) == false  #Checking if guessed letter is wrong
    puts "Wrong Guess"
  else 
    puts "Correct Guess"
  end
  puts ""
  puts "You have #{name.length-j-1} no. of chances left"
  print blanks.join('') 
  puts ""
  if blanks == name then puts "You WON"; break; end
  j=j+1
end
puts "You Loose" if blanks != name
  puts blanks.join('')
