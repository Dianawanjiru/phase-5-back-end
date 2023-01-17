class AppointmentSerializer < ActiveModel::Serializer
  attributes :first_name, :last_name, :email_address, :phone_number, :check_in_date, :check_in_time, :person_capacity, :additional_info
end
