class Doctor::AppointmentsController < ApplicationController
  before_filter :ensure_logged_in

  def index
    @appointments = current_user.appointments
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    if current_user.type == "paitent"

      @appointment.patient_id = current_user.id
      @appointment.doctor_id = params[:user_id]

    elsif current_user.type == "doctor"

      @appointment.doctor_id = current_user.id
      @appointment.patient_id = params[:user_id]

    else
  end

  def edit
    @appointment = Appointment.find(params[:id])
  end

  def update
    @appointment = Appointment.find(appointment_params)
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    redirect_to root_url
  end

  private
    def appointment_params
      params.require(:appointment).permit()
    end
end
