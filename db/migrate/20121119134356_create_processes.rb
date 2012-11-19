class CreateProcesses < ActiveRecord::Migration
  def self.up
    create_table :processes do |t|
      t.string :name
      t.text :goal
      t.integer :person_id
      t.integer :organization_id
      t.timestamps
    end
  end

  def self.down
    drop_table :processes
  end
end
