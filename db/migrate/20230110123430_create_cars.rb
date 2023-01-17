class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :price
      t.string :make
      t.string :model
      t.string :fuel_type
      t.string :transmission
      t.integer :mileage
      t.integer :engine_size
      t.integer :year
      t.string :image

      t.timestamps
    end
  end
end
