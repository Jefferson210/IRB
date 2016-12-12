class Color < ActiveRecord::Base
    belongs_to :genetic_bank
    #    VALIDATIONS
    validates :colorName, presence:{ message:"Obligatory"}, uniqueness: {case_sensitive: false, message:"already exists"}
end
