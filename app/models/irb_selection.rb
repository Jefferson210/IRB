class IrbSelection < ActiveRecord::Base
    belongs_to :three_offspring
    #self.primary_keys = :code
    
    #    relacion para agregar varias imagenes a una variedad
    has_many :irb_selections_pictures, dependent: :destroy
    #    VALIDATIONS
    validates :three_offspring_id, presence:{ message:"Obligatory"}
    validates :code, presence:{ message:"Obligatory"}, uniqueness: {case_sensitive: false, message:"already exists"}    
    validates :location, :allow_blank => true, uniqueness: {case_sensitive: false, message:"already exists"}    
    validates :trademark,:allow_blank => true, uniqueness: {case_sensitive: false, message:"already exists"}
    validates :denomination,:allow_blank => true, uniqueness: {case_sensitive: false, message:"already exists"}
end
