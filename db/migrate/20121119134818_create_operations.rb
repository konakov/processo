class CreateOperations < ActiveRecord::Migration
  def self.up
    create_table :operations do |t|
      t.string :name
      t.string :goal
      t.text :instruction
      t.text :in
      t.text :out
      t.timestamps
    end
  end

  def self.down
    drop_table :operations
  end
end
