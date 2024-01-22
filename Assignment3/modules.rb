#Module File for Assignment3
require_relative 'data'
#Input Module for Country Name
module GetCountry
  def self.GetCname
    puts "Enter Country Name"
    cname = gets.chomp.downcase
    return  cname
  end
end
#Module to find Country name in Data
module FindCountry
  def self.FindCname
    cname = GetCountry.GetCname
    count = CountryData.Country.find {|x| x[:Name] == cname}
    if count != nil
      return count
    else
      puts "Country Not Found in our Database"
    end 
  end
end
#Module to find Country is eligible for Loan or not
module LoanEligibility
  def self.GetLoan
    country = FindCountry.FindCname
    if country && country[:GDP] > 4_00_00_00_000
      puts "Eligible for loan"
    elsif country != nil 
      puts "Not Eligible for loan"
    end
  end
end
#Module to find Country is eligible for UN Seats or not
module UnSeats
  def self.Seats
    country = FindCountry.FindCname
    if country && country[:State_of_country] == "Developed"
      puts "Eligible for UN Seats"
    elsif country != nil
      puts "Not Eligible for UN Seats"    
    end
  end
end
#Module to find Country can win War or not
module WarPradiction
  def self.Prediction
    country = FindCountry.FindCname
    if country && country[:Armey_Strength] > 7
        puts "Win War"
    elsif country != nil
        puts "Lose War"
    end
  end
end


