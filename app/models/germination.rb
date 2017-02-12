class Germination < ActiveRecord::Base
    belongs_to :seed
    has_many :one_offsprings
    
    
    #VALIDATES
    validates :seed_id,presence:{ message:"Obligatory"} , uniqueness: { scope: [:week],case_sensitive: false, message:"already exists with this week"} 
    
    validates :week, presence:{ message:"Obligatory"}
    validates :numGerminations, presence:{ message:"Obligatory"}
    
    validate :individualGermination_less_than_individualSeed
    
#    def codeCross_numRepeat
##        "#{seed.crossing.codeCross}-#{seed.crossing.numRepeat}"
#        "#{seed.crossing.codeCross}"
#    end
    
    def individualGermination_less_than_individualSeed
        if self.numGerminations.blank?
            puts "errors algo salio mal"
        else
            maxIndividual = Seed.where(codeCross: self.seed.codeCross).select(:id).maximum(:totalCode)
            errors.add(:numGerminations, "should be less or equal than total Code #{maxIndividual} from Seed ") if numGerminations >  maxIndividual
        end
    end
end
