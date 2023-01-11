class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.text :first_name
      t.text :last_name
      t.text :email_address
      t.integer :phone_number
      t.text :from_adress
      t.text :to_adress
      t.date :check_in_date
      t.date :check_out_date
      t.time :check_in_time
      t.time :check_out_time
      t.text :additional_information
      t.integer :user_id
      t.integer :car_id

      t.timestamps
    end
  end
end
