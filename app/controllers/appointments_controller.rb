class AppointmentsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with:  :respond_record_not_found
    # skip_before_action :authorize
    def index 
        appointments = Appointment.all
        render json: appointments
    end

    def show 
        appointment = Appointment.find(params[:id])        
        render json: appointment, status: 200
    end

    def create
        appointment = Appointment.create!(appointment_params)
        render json: appointment, status: :created
    end

    def update 
        appointment = Appointment.find_by(id: params[:id])
        if appointment
            appointment.update(appointment_params)
            render json: appointment
        else
            render json: { error: "Appointment not found" }, status: :not_found
        end
    end

    def destroy
        session.delete :appointment_id
        head :no_content
    end



    private
    def appointment_params
        params.permit(:first_name, :email_address, :phone_number, :check_in_time, :person_capacity, :additional_info, :last_name, :check_in_date, :user_id)
    end

    def respond_record_not_found
        render json: { error: "appointment not found" }, status: 404
    end
end
