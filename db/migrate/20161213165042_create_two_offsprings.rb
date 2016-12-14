class CreateTwoOffsprings < ActiveRecord::Migration
    def change
        create_table :two_offsprings, id: false do |t|
            t.string :codeCross, null: false
            t.integer :individual, null: false
            t.references :color, index: true, foreign_key: true
            t.string :status
            t.decimal :headSize, precision:5 , scale:2
            t.integer :flowering
            t.integer :numPetals
            t.string :form

            t.timestamps null: false
        end
        execute "ALTER TABLE two_offsprings ADD PRIMARY KEY (codeCross,individual);"
    end
end
