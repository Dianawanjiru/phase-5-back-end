class ChangeCarDatatypeColumns < ActiveRecord::Migration[7.0]
  def change
    change_column :cars, :fuel_type,  :text
    change_column :cars, :transmission,  :text
    change_column :cars, :image,  :text
  end
end
