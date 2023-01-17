class Car < ApplicationRecord
    has_many :users
    has_many :reservations
end
