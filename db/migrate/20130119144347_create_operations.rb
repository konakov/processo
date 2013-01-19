class CreateOperations < ActiveRecord::Migration
  def change
    create_table :operations do |t|
      t.integer :document_id
      t.string :name
      t.text :goal
      t.text :worker
      t.text :stepts
      t.text :exceptions

      t.timestamps
    end
  end
end
