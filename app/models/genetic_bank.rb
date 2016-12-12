class GeneticBank < ActiveRecord::Base
    has_many :colors
    #    VALIDATIONS
    validates :code, presence:{ message:"Obligatory"}, uniqueness: {case_sensitive: false, message:"already exists"}
    validates :location, :allow_blank => true, uniqueness: {case_sensitive: false, message:"already exists"}    
    validates :trademark,:allow_blank => true, uniqueness: {case_sensitive: false, message:"already exists"}
    validates :denomination,:allow_blank => true, uniqueness: {case_sensitive: false, message:"already exists"}

end
