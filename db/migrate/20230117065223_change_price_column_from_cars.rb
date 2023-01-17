class ChangePriceColumnFromCars < ActiveRecord::Migration[7.0]
  def up
    remove_column :cars, :price
  end
  def down 
    add_column :cars, :price, :text
  end
end
