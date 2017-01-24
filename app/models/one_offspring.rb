class OneOffspring < ActiveRecord::Base
    #self.primary_keys = :codeCross,:individual
    #belongs_to :seed
    belongs_to :germination
    belongs_to :color
    has_many :two_offsprings
    #    VALIDATIONS
    validates :germination_id, presence:{ message:"Obligatory"}, uniqueness: { scope: [:individual],case_sensitive: false, message:"already exists with this individual"}
    validates :individual, presence:{ message:"Obligatory"}

    #    validate :individualGermination_less_than_individualOneOffspring, :on => :save
    validate :individualGermination_less_than_individualOneOffspring

    def individualGermination_less_than_individualOneOffspring
        #        errors.add(:individual, "should be less or equal than individual of Germination") if individual > germination.numGerminations
        errors.add(:individual, "should be less or equal than individual of Germination") if individual >  Germination.maximum(:totalCode) 
        
    end

    def codeCross_name
        "#{germination.seed.crossing.codeCross}-#{OneOffspring.where(id: self.id).first.individual}"
    end

end

