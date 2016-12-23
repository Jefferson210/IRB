class AddFkToTables < ActiveRecord::Migration
    def change
        add_foreign_key :crossings, :genetic_banks, column: :father, primary_key: :location
        add_foreign_key :crossings, :genetic_banks, column: :mother, primary_key: :location

        add_foreign_key :seeds, :crossings, column: :codeCross, primary_key: :codeCross
        add_foreign_key :one_offsprings, :seeds, column: :codeCross, primary_key: :codeCross
        add_foreign_key :two_offsprings, :one_offsprings, column: :codeCross, primary_key: :codeCross
        add_foreign_key :three_offsprings, :two_offsprings, column: :codeCross, primary_key: :codeCross
        add_foreign_key :irb_selections, :three_offsprings, column: :codeCross, primary_key: :codeCross
    end
end
