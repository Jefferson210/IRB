class OneOffspring < ActiveRecord::Base
    #self.primary_keys = :codeCross,:individual
    #belongs_to :seed
    belongs_to :germination
    belongs_to :color
    has_many :two_offsprings
    #    VALIDATIONS
    validates :germination_id, presence:{ message:"Obligatory"}, uniqueness: { scope: [:individual],case_sensitive: false, message:"already exists with this individual"}
    validates :individual, presence:{ message:"Obligatory"}
    
    def codeCross_name
        "#{germination.seed.crossing.codeCross}-#{OneOffspring.where(id: self.id).first.individual}"
    end
    
end

