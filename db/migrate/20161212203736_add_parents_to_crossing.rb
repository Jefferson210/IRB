class AddParentsToCrossing < ActiveRecord::Migration
  def change
      add_foreign_key :crossings, :genetic_banks, column: :father, primary_key: :code
      add_foreign_key :crossings, :genetic_banks, column: :mother, primary_key: :code
  end
end
