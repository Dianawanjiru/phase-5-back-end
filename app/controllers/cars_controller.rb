class CarsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response


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

    private
 
    def render_not_found_response
        render json: { errors: "car not found" }, status: :not_found
    end
end
end
