class AddYearToReservations < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :year, :integer
  end
end
