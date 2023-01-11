class AddCheckInDateToAppointment < ActiveRecord::Migration[7.0]
  def change
    add_column :appointments, :check_in_date, :date
  end
end
