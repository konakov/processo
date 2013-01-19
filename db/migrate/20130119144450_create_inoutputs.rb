class CreateInoutputs < ActiveRecord::Migration
  def change
    create_table :inoutputs do |t|
      t.text :body

      t.timestamps
    end
  end
end
