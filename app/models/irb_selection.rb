class IrbSelection < ActiveRecord::Base
    belongs_to :color
    self.primary_keys = :code
    #    VALIDATIONS
    validates :codeCross, presence:{ message:"Obligatory"}, uniqueness: {case_sensitive: false, message:"already exists with this individual"}
    validates :code, presence:{ message:"Obligatory"}, uniqueness: {case_sensitive: false, message:"already exists"}    
    validates :location, :allow_blank => true, uniqueness: {case_sensitive: false, message:"already exists"}    
    validates :trademark,:allow_blank => true, uniqueness: {case_sensitive: false, message:"already exists"}
    validates :denomination,:allow_blank => true, uniqueness: {case_sensitive: false, message:"already exists"}
end
