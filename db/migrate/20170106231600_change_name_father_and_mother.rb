class ChangeNameFatherAndMother < ActiveRecord::Migration
  def change
      rename_column :crossings, :father, :father_id
      rename_column :crossings, :mother, :mother_id
  end
end
