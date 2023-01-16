class ReservationsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with:  :respond_record_not_found

    def index 
        reservations = Reservation.all
        render json: reservations, status: :ok
    end

    def show
        reservation = Reservation.find(params[:id])        
        render json: reservation, status: 200
    end

    def create 
        reservation = @current_user.reservation.create!(reservation_params)
        render json: reservation, status: :created
    end

    def update 
        reservation = @current_user.reservation.find_reservation
        if reservation
            reservation.update(reservation_params)
            render json: reservation
        else
            render json: { error: "Reservation not found" }, status: :not_found
        end
    end

    def destroy
        reservation = @current_user.find_reservation
        if reservation
            reservation.destroy
            head :no_content
        else
            render json: { error: "reservation not found" }, status: :not_found
        end
    end

    private
    def find_reservation
        Reservation.find_by(id: params[:id])
    end

    def reservation_params
        params.permit(:first_name, :last_name, :email_address, :phone_number, :from_adress, :to_adress, :check_in_date, :check_out_date, :check_in_time, :check_out_time, :additional_information, :user_id, :car_id)
    end

    def respond_record_not_found
        render json: { error: "reservation not found" }, status: 404
    end

end
