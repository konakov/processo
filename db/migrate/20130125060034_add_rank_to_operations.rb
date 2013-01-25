class AddRankToOperations < ActiveRecord::Migration
  def change
    add_column :operations, :rank, :integer
  end
end
