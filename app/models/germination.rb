class Germination < ActiveRecord::Base
    belongs_to :seed
    has_many :one_offsprings
    
    def codeCross_name
        "#{seed.crossing.codeCross}"
    end
end
