class AddMakeToReservations < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :make, :text
  end
end
