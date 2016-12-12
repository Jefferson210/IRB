class CreateGeneticBanks < ActiveRecord::Migration
    def change
        create_table :genetic_banks, id:false do |t|
            t.string :code, null: false
            t.string :location
            t.string :trademark
            t.string :denomination
            t.date :year
            t.string :breeder
            t.string :status
            t.integer :numPlants
            t.string :scent
            t.string :headSize
            t.integer :numPetals
            t.decimal :steamLenght
            t.string :production
            t.string :opening
            t.text :abnormality
            t.text :remarks

            t.timestamps
        end
        execute "ALTER TABLE genetic_banks ADD PRIMARY KEY (code);"
    end
end
