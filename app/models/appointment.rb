class Appointment < ApplicationRecord
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email_address, presence: true
    validates :phone_number, presence: true
    validates :check_in_date, presence:true
    validates :check_in_time, presence: true
    validates :person_capacity, presence: true
    
    belongs_to :user
end
