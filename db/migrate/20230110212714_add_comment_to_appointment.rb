class AddCommentToAppointment < ActiveRecord::Migration[7.0]
  def change
    add_column :appointments, :user_id, :integer
  end
end
