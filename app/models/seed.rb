class Seed < ActiveRecord::Base
    #self.primary_keys = :codeCross,:sowDate 
    belongs_to :crossing
    #has_many :one_offsprings
    has_many :germinations
    #    VALIDATIONS
    validates :crossing_id, presence:{ message:"Obligatory"}, uniqueness: { scope: [:sowDate],case_sensitive: false, message:"already exists with this date"}
    validates :sowDate, presence:{ message:"Obligatory"}

    
    def codeCross_name
        "#{crossing.codeCross}"
    end
end
