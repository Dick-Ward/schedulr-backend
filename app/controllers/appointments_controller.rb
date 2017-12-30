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
    if appointment.save
      render json: appointment
    else render json: {error: "Invalid token"}, status: 401
    end
  end

  def update
    appointment = Appointment.find(params[:id])
    appointment.update(appointment_params)
    render json: appointment
  end

  def destroy
    appointment = Appointment.find(params[:id])
    appointment.delete
    render json: appointment
  end



private

def appointment_params
  params.require(:appointment).permit(:title, :duration, :user_id, :x, :y)
end

end
