#Main file for the assignment 3
#A CLI application for handling data from as many countries as we can. Example of what data we have:
#1 Population
#2 GDP
#3 States
#4 Army Strength
#5 State of the country (developing,developed)
#On the basis of all these data we will be building a modules to concenive various output like:
#1 Whether the country will get a loan from the IMF (International Monetary Fund) or WB (World Bank)
#2 Whether the country can have a seat in the UN (United Nation) security councile
#3 Whether the country can win a war or not 

require_relative 'modules'
puts "MENU"
puts "1. Check Eligibility for Loan"
puts "2. Check Eligibilityfor UN Seat"
puts "3. Prediction for war (Win/Loose)"
puts "4. Exit"
puts "Enter Your Choice"
Choice = gets.chomp.to_i
case Choice
  when 1
    LoanEligibility.GetLoan
  when 2
    UnSeats.Seats
  when 3
    WarPradiction.Prediction
  else
    exit
end