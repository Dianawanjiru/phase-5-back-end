class CarSerializer < ActiveModel::Serializer
  attributes :id, :price, :make, :model, :fuel_type, :transmission, :mileage, :engine_size, :year, :image
  # has_many :users
  # has_many :reservations
end
