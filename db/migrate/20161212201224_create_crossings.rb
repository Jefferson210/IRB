class CreateCrossings < ActiveRecord::Migration
    def change
        create_table :crossings, id: false do |t|
            t.string :crossCode, null: false
            t.integer :year
            t.string :status
            t.string :father
            t.string :mother
            t.integer :crossWeek
            t.integer :numCrossings
            t.integer :goodCrossings
            t.integer :badCrossings
            t.string :effective
            t.decimal :percentageEffective, precision:5, scale:2
            t.date :dateHarvest
            t.integer :weekHarvest
            t.integer :numSeeds

            t.timestamps
        end
        execute "ALTER TABLE crossings ADD PRIMARY KEY (crossCode);"
    end
end
