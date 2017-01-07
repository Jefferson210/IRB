class GeneticBank < ActiveRecord::Base
    belongs_to :color
    has_many :fathers, :class_name => "Crossing", :foreign_key => "father_id", dependent: :destroy
    has_many :mothers, :class_name => "Crossing", :foreign_key => "mother_id", dependent: :destroy
    
    #    self.primary_keys = :location
    #    VALIDATIONS
    validates :code, :allow_blank => true, uniqueness: {case_sensitive: false, message:"already exists"}    
    validates :location, presence:{ message:"Obligatory"}, :allow_blank => false, uniqueness: {case_sensitive: false, message:"already exists"} 

    validates :trademark,:allow_blank => true, uniqueness: {case_sensitive: false, message:"already exists"}
    validates :denomination,:allow_blank => true, uniqueness: {case_sensitive: false, message:"already exists"}

    validates :status, presence:{ message:"Obligatory"}, :allow_blank => false

    validate :location_exists, on: :update
    validate :code_exists, on: :update

    def location_exists
        if self.location_changed?
            if GeneticBank.exists?(self.location)
                errors.add(:location, "already exists")
            end
        end
    end

    def code_exists
        if self.code_changed?
            if GeneticBank.exists?(self.code)
                errors.add(:code, "already exists")
            end
        end
    end
    
     def selectCodeTrademark
         "#{GeneticBank.where(id: self.id).first.code}-#{GeneticBank.where(id: self.id).first.trademark}"
    end

end
