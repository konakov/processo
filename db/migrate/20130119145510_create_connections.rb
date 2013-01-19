class CreateConnections < ActiveRecord::Migration
  def change
    create_table :connections do |t|
      t.integer :operation_id
      t.integer :inoutput
      t.text :way

      t.timestamps
    end
  end
end
