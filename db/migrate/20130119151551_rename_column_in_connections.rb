class RenameColumnInConnections < ActiveRecord::Migration
  def change
    rename_column :connections, :inoutput, :inoutput_id
  end
end
