class ThreeOffspring < ActiveRecord::Base
    #self.primary_keys = :codeCross,:individual
    belongs_to :two_offspring
    has_many :irb_selections
    
    #    VALIDATIONS
    validates :two_offspring_id, presence:{ message:"Obligatory"}, uniqueness: {case_sensitive: false, message:"already exists"}
    #validates :individual, presence:{ message:"Obligatory"}
    
    def codeCross_name
        "#{two_offspring.one_offspring.germination.seed.crossing.codeCross}-#{two_offspring.one_offspring.individual}"
    end
    
end
