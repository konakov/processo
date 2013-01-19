class RenameColumnInOperations < ActiveRecord::Migration
  def change
    rename_column :operations, :stepts, :steps
  end
end
