class ChangeColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :bars, :adress, :address
  end
end
