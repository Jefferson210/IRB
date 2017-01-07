class Crossing < ActiveRecord::Base
    belongs_to :father, :class_name => "GeneticBank", :foreign_key => "father_id", dependent: :destroy
    belongs_to :mother, :class_name => "GeneticBank", :foreign_key => "mother_id", dependent: :destroy
    #    VALIDATIONS
    validates :codeCross, presence:{ message:"Obligatory"}, uniqueness: {case_sensitive: false, message:"already exists"}
    validates :father_id,presence:{ message:"Obligatory"}  
    validates :mother_id,presence:{ message:"Obligatory"}  
    
    
   
end
