class AppointmentsController < ApplicationController
  before_action :set_appointment!, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      redirect_to appointment_path(@appointment.id)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @appointment.update(appointment_params)
      redirect_to appointment_path(@appointment.id)
    else
      render :edit
    end
  end

  def destroy
    @appointment.destroy
    redirect_to root
  end

  private

  def appointment_params
    params.require(:appointment).permit(:appointment_datetime, :doctor_id, :patient_id)
  end

  def set_appointment!
    @appointment = Appointment.find(params[:id])
  end

end
