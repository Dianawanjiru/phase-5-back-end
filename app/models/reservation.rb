class Reservation < ApplicationRecord
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email_address, presence: true
    validates :phone_number, presence: true
    validates :from_adress, presence: true
    validates :to_adress, presence: true
    validates :check_in_date, presence:true
    validates :check_out_date, presence:true
    validates :check_in_time, presence: true
    validates :check_out_time, presence:true

    belongs_to :user
    belongs_to :car
end
