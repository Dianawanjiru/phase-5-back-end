class AddFuelTypeToReservations < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :fuel_type, :text
  end
end
