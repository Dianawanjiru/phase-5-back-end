class CarsController < ApplicationController
    #all cars
    car = Car.all
    render json: car, except: [:created_at, :updated_at], status: :ok
end
