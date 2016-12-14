class ThreeOffspring < ActiveRecord::Base
    self.primary_keys = :codeCross,:individual
    belongs_to :two_offspring
    belongs_to :color
    #    VALIDATIONS
    validates :codeCross, presence:{ message:"Obligatory"}, uniqueness: { scope: [:individual],case_sensitive: false, message:"already exists with this individual"}
    validates :individual, presence:{ message:"Obligatory"}
end
