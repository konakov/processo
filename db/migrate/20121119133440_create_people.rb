class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :name
      t.string :email
      t.integer :level_id
      t.integer :organization_id
      t.boolean :active
      t.text :information
      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
