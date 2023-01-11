class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email_address, :phone_number, :from_adress, :to_adress, :check_in_date, :check_out_date, :check_in_time, :check_out_time, :additional_information, :user_id, :car_id
end
