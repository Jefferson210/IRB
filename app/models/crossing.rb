class Crossing < ActiveRecord::Base
    belongs_to :father, :class_name => "GeneticBank", :foreign_key => "father_id", dependent: :destroy
    belongs_to :mother, :class_name => "GeneticBank", :foreign_key => "mother_id", dependent: :destroy
    #    VALIDATIONS
    validates :codeCross, presence:{ message:"Obligatory"}, uniqueness: {scope: [:numRepeat], case_sensitive: false, message:"already exists with this numRepeat"}
    validates :numRepeat,presence:{ message:"Obligatory"}  
    validates :father_id,presence:{ message:"Obligatory"}  
    validates :mother_id,presence:{ message:"Obligatory"}  

    #    funcion para mostrar en el select de seed el codeCross y numRepeat
    def selectCodeNumRepeat
        "#{Crossing.where(id: self.id).first.codeCross}-#{Crossing.where(id: self.id).first.numRepeat}"
    end

end
