class CarsController < ApplicationController
    #all cars
    def index 
    car = Car.all
    render json: car, except: [:created_at, :updated_at], status: :ok
    end
end
