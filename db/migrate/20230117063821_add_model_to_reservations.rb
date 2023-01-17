class AddModelToReservations < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :model, :text
  end
end
