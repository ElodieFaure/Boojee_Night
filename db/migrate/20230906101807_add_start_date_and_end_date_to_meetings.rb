class AddStartDateAndEndDateToMeetings < ActiveRecord::Migration[7.0]
  def change
    add_column :meetings, :start_date, :date
    add_column :meetings, :end_date, :date
  end
end
