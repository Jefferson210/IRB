class Seed < ActiveRecord::Base
    self.primary_keys = :codeCross,:sowDate
    belongs_to :crossing
    #    VALIDATIONS
    validates :codeCross, presence:{ message:"Obligatory"}, uniqueness: { scope: [:sowDate],case_sensitive: false, message:"already exists with this date"}
    validates :sowDate, presence:{ message:"Obligatory"}

end
