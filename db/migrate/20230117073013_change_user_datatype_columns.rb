class ChangeUserDatatypeColumns < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :username,  :text
    change_column :users, :password_digest,  :text
  end
end
