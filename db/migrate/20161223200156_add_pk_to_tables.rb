class AddPkToTables < ActiveRecord::Migration
    def change

    end
    execute "ALTER TABLE genetic_banks ADD PRIMARY KEY (location);"
    execute "ALTER TABLE crossings ADD PRIMARY KEY (codeCross,numOrder);"
    execute "ALTER TABLE seeds ADD PRIMARY KEY (codeCross,sowDate);"
    execute "ALTER TABLE one_offsprings ADD PRIMARY KEY (codeCross,individual);"
    execute "ALTER TABLE two_offsprings ADD PRIMARY KEY (codeCross);"
    execute "ALTER TABLE three_offsprings ADD PRIMARY KEY (codeCross);"
    execute "ALTER TABLE irb_selections ADD PRIMARY KEY (codeCross,code);"
    execute "ALTER TABLE spek_selections ADD PRIMARY KEY (code);"

end
