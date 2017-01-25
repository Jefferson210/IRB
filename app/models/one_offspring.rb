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
        maxIndividual = Germination.where(codeCross: self.germination.codeCross).select(:id,:codeCross,:totalCode).maximum(:totalCode)
        errors.add(:individual, "should be less or equal than total Code #{maxIndividual} from Germination ") if individual >  maxIndividual
    end

    def codeCross_name
        "#{germination.seed.crossing.codeCross}-#{OneOffspring.where(id: self.id).first.individual}"
    end

end

