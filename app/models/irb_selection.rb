class IrbSelection < ActiveRecord::Base
    belongs_to :three_offspring
    #self.primary_keys = :code
    #    VALIDATIONS
    validates :three_offspring_id, presence:{ message:"Obligatory"}
    validates :code, presence:{ message:"Obligatory"}, uniqueness: {case_sensitive: false, message:"already exists"}    
    validates :location, :allow_blank => true, uniqueness: {case_sensitive: false, message:"already exists"}    
    validates :trademark,:allow_blank => true, uniqueness: {case_sensitive: false, message:"already exists"}
    validates :denomination,:allow_blank => true, uniqueness: {case_sensitive: false, message:"already exists"}
end
