class AddLastNameToAppointment < ActiveRecord::Migration[7.0]
  def change
    add_column :appointments, :last_name, :text
  end
end
