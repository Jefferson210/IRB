class AddPkToTables < ActiveRecord::Migration
    def change
    end
    #        execute "ALTER TABLE genetic_banks ADD PRIMARY KEY (location);"
    #        execute "ALTER TABLE crossings ADD PRIMARY KEY (codeCross,numOrder);"
    #        execute "ALTER TABLE seeds ADD PRIMARY KEY (codeCross,sowDate);"
    #        execute "ALTER TABLE one_offsprings ADD PRIMARY KEY (codeCross,individual);"
    #        execute "ALTER TABLE two_offsprings ADD PRIMARY KEY (codeCross);"
    #        execute "ALTER TABLE three_offsprings ADD PRIMARY KEY (codeCross);"
    #        execute "ALTER TABLE irb_selections ADD PRIMARY KEY (codeCross,code);"
    #        execute "ALTER TABLE spek_selections ADD PRIMARY KEY (code);"
    add_column :seeds, :crossing_id, :integer, after: :id
    add_column :germinations, :seed_id, :integer, after: :id
    #add_column :one_offsprings, :seed_id, :integer, after: :id
    add_column :one_offsprings, :germination_id, :integer, after: :id
    add_column :two_offsprings, :one_offspring_id, :integer, after: :id
    add_column :three_offsprings, :two_offspring_id, :integer, after: :id
    add_column :irb_selections, :three_offspring_id, :integer, after: :id

end