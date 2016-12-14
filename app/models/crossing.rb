class Crossing < ActiveRecord::Base
    #    VALIDATIONS
    validates :crossCode, presence:{ message:"Obligatory"}, uniqueness: {case_sensitive: false, message:"already exists"}
    validates :father,presence:{ message:"Obligatory"}  
    validates :mother,presence:{ message:"Obligatory"}  
end
