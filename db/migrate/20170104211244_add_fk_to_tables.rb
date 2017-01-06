class AddFkToTables < ActiveRecord::Migration
    def change
        #        add_foreign_key :crossings, :genetic_banks, column: :father, primary_key: :location
        #        add_foreign_key :crossings, :genetic_banks, column: :mother, primary_key: :location
        #
        #        add_foreign_key :seeds, :crossings, column: :codeCross, primary_key: :codeCross
        #        add_foreign_key :one_offsprings, :seeds, column: :codeCross, primary_key: :codeCross
        #        add_foreign_key :two_offsprings, :one_offsprings, column: :codeCross, primary_key: :codeCross
        #        add_foreign_key :three_offsprings, :two_offsprings, column: :codeCross, primary_key: :codeCross
        #        add_foreign_key :irb_selections, :three_offsprings, column: :codeCross, primary_key: :codeCross

#        add_foreign_key :crossings, :genetic_banks, column: :father, primary_key: :id
#        add_foreign_key :crossings, :genetic_banks, column: :mother, primary_key: :id
#
        add_foreign_key :seeds, :crossings
        add_foreign_key :germinations, :seeds
        add_foreign_key :one_offsprings, :germinations
        add_foreign_key :two_offsprings, :one_offsprings
        add_foreign_key :three_offsprings, :two_offsprings
        add_foreign_key :irb_selections, :three_offsprings
    end
    execute "ALTER TABLE crossings ADD CONSTRAINT fk_father_id FOREIGN KEY (`father`) REFERENCES genetic_banks(`id`);"
    execute "ALTER TABLE crossings ADD CONSTRAINT fk_mother_id FOREIGN KEY (`mother`) REFERENCES genetic_banks(`id`);"
end