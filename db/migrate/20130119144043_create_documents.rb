class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :name
      t.text :description
      t.text :purpose
      t.text :metrics

      t.timestamps
    end
  end
end
