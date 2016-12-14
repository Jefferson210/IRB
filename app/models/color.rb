class Color < ActiveRecord::Base
    has_many :genetic_banks
    has_many :one_offsprings
    #    VALIDATIONS
    validates :colorName, presence:{ message:"Obligatory"}, uniqueness: {case_sensitive: false, message:"already exists"}
end
