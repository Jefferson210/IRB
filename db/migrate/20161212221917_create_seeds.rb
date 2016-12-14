class CreateSeeds < ActiveRecord::Migration
    def change
        create_table :seeds, id: false do |t|
            t.string :codeCross, null: false
            t.date :sowDate, null: false
            t.string :origin
            t.integer :numSeeds
            t.decimal :totalWeight, precision:5 , scale:2
            t.integer :week
            t.string :hydratation
            t.string :status
            t.date :dateOut
            t.integer :totalGermination
            t.decimal :percentageGermination, precision:5 , scale:2

            t.timestamps null: false
        end
        execute "ALTER TABLE seeds ADD PRIMARY KEY (codeCross,sowDate);"
    end
end
