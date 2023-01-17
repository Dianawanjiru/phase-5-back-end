class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.text :first_name
      t.text :email_address
      t.integer :phone_number
      t.time :check_in_time
      t.integer :person_capacity
      t.text :additional_info

      t.timestamps
    end
  end
end
