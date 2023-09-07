class AddAddressToMeetings < ActiveRecord::Migration[7.0]
  def change
    add_column :meetings, :address, :string
  end
end
