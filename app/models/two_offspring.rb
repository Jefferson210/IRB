class TwoOffspring < ActiveRecord::Base
    #self.primary_keys = :codeCross,:individual
    belongs_to :one_offspring
    has_many :three_offsprings
    #    VALIDATIONS
    validates :one_offspring_id, presence:{ message:"Obligatory"}, uniqueness: {case_sensitive: false, message:"already exists"}
    #validates :codeCross, presence:{ message:"Obligatory"}, uniqueness: { scope: [:individual],case_sensitive: false, message:"already exists with this individual"}
    #validates :individual, presence:{ message:"Obligatory"}
    
    def codeCross_name
        "#{one_offspring.germination.seed.crossing.codeCross}-#{one_offspring.individual}"
    end
end
