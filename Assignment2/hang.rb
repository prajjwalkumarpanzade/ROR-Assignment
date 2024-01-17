names = ["ironman","captainamerica","hulk","blackwidow","thor"]  #List of words

name = names[rand(names.length)]     #Choosing random word from list 
name = name.chars                    #converting to array of letters
#name = ("ironman").chars
puts "Welcome to Hangman Game."
puts "Guess the name of marvel character"
#print name.join('')
puts ""
blanks = ('_'*name.length).chars 

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
  print blanks.join('') 
  puts ""

  if blanks == name   #Check for guessed word and original word and winnig condition
  puts "You Won"
  break
end

  j=j+1
end
if blanks != name #Loosing condition
  puts "You Loose"
end
  puts blanks.join('')

