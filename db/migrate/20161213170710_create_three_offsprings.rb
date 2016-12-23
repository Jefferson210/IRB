class CreateThreeOffsprings < ActiveRecord::Migration
    def change
        create_table :three_offsprings, id: false do |t|
            t.string :codeCross, null: false, unique: true
            t.string :color
            t.string :status
            t.decimal :headSize, precision:5 , scale:2
            t.integer :flowering
            t.integer :numPetals
            t.string :form

            t.timestamps null: false
        end
    end
end
