class ChangeMakeColumn < ActiveRecord::Migration[7.0]
  def change
    change_column :cars, :make, :text
  end
end
