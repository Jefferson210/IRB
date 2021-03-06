class SpekSelection < ActiveRecord::Base
    belongs_to :color
#    self.primary_keys = :code

    #    relacion para agregar varias imagenes a una variedad
    has_many :spek_selections_pictures, dependent: :destroy

    #    VALIDATIONS
    validates :code, presence:{ message:"Obligatory"}, uniqueness: {case_sensitive: false, message:"already exists"}    
    validates :location, :allow_blank => true, uniqueness: {case_sensitive: false, message:"already exists"}    
    validates :trademark,:allow_blank => true, uniqueness: {case_sensitive: false, message:"already exists"}
    validates :denomination,:allow_blank => true, uniqueness: {case_sensitive: false, message:"already exists"}
end
