#Data Module for Assignment3
module  CountryData
  def self.Country
    countrydata = 
                  [        
                    {
                      Name: "india",
                      Population:1_30_00_00_000,
                      GDP:3_00_00_00_00_00_000,
                      States:33,
                      Armey_Strength:9,
                      State_of_country: "Developed"
                    },   
                    {
                      Name: "usa",
                      Population:13_00_00_000,
                      GDP:3_00_00_00_00_00_00_000,
                      States:50,
                      Armey_Strength:9,
                      State_of_country: "Developed"
                    },
                    {
                      Name: "china",
                      Population:1_30_00_00_00_000,
                      GDP:30_00_00_00_00_000,
                      States:45,
                      Armey_Strength:8,
                      State_of_country: "Developed"
                    },          
                    {
                      Name: "russia",
                      Population:30_00_00_000,
                      GDP:3_00_00_00_00_00_000,
                      States:33,
                      Armey_Strength:9,
                      State_of_country: "Developed"
                    },         
                    {
                      Name: "uk",
                      Population:10_00_00_000,
                      GDP:3_00_00_00_00_000,
                      States:20,
                      Armey_Strength:7,
                      State_of_country: "Developed"
                    },
                    {
                      Name: "pakistan",
                      Population:1_00_00_000,
                      GDP:3_00_00_00_000,
                      States:15,
                      Armey_Strength:5,
                      State_of_country: "Developing"
                    },         
                    {
                      Name: "nepal",
                      Population:2_30_00_000,
                      GDP:1_00_00_00_00_000,
                      States:5,
                      Armey_Strength:5,
                      State_of_country: "Developing"
                    },
                    { 
                      Name: "bangladesh",
                      Population:10_50_00_000,
                      GDP: 2_00_00_00_000,
                      States: 7,
                      Armey_Strength: 4,
                      State_of_country: "Developing"
                      
                    }                    
                  ]
    return countrydata
  end
end
