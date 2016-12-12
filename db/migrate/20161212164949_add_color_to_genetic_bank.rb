class AddColorToGeneticBank < ActiveRecord::Migration
  def change
    add_reference :genetic_banks, :color, index: true
  end
end
