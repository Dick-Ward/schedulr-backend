class AppointmentsController < ApplicationController

  def index
    appointments = Appointment.all
    render json: appointments
  end

  def show
    appointment = Appointment.find(params[:id])
    render json: appointment
  end

  def create
    appointment = Appointment.new(appointment_params)
    render json: appointment
  end

  def update
    appointment = Appointment.find(params[:id])
    appointment.update(appoinment_params)
    render json: appointment
  end

  def destroy
    appointment = Appointment.find(params[:id])
    appointment.delete
    render json: appointments
  end



private

def appointment_params
  params.require(:appointment).permit(:user_id, :street_address, :city, :date_time, :title, :duration, :description)
end

end
