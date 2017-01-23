class Germination < ActiveRecord::Base
    belongs_to :seed
    has_many :one_offsprings
    
    
    #VALIDATES
    validates :seed_id,presence:{ message:"Obligatory"} , uniqueness: { scope: [:week],case_sensitive: false, message:"already exists with this week"} 
    
    validates :week, presence:{ message:"Obligatory"}
    validates :numGerminations, presence:{ message:"Obligatory"}
    
    def codeCross_numRepeat
        "#{seed.crossing.codeCross}-#{seed.crossing.numRepeat}"
    end
end
