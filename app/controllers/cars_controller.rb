class CarsController < ApplicationController
    #all cars
    def index 
    cars = Car.all
    render json: cars, except: [:created_at, :updated_at], status: :ok
    end

 #GET /cars/ 1
    def show 
        car = Car.find(params[:id])
        render json: car, status: 200
    end
end
