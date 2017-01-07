class Germination < ActiveRecord::Base
    belongs_to :seed
    has_many :one_offsprings
    
    
    #VALIDATES
    validates :seed_id,presence:{ message:"Obligatory"} , uniqueness: {case_sensitive: false, message:"already exists"} 
    
    def codeCross_name
        "#{seed.crossing.codeCross}"
    end
end
