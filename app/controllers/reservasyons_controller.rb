class ReservasyonsController < ApplicationController
  before_action :authenticate_customer!
  before_action :set_place
  before_action :set_reservasyon, only: [:update]
  before_action :authorize_customer!, only: [:update]

  def create

    @reservasyon = @place.reservasyons.new(reservasyon_params)
    @reservasyon.customer = current_customer

    if @reservasyon.save
      redirect_to @place, notice: "Reservasyon was saved."
    else
      redirect_to @place, notice: "Reservasyon is not valid."
    end
  end

  def destroy
    @reservasyon = @place.reservasyons.find(params[:id])
    @reservasyon.destroy
    redirect_to @place
  end

  def update
    if @reservasyon.update(reservasyon_params)
      redirect_to @place, notice: "Rezervasyon was saved."
    else
      redirect_to @place, notice: "Rezervasyon is not valid."
    end
  end

  private

  def reservasyon_params
    params.require(:reservasyon).permit(:date,:number_of_people)
  end

  def set_place
    @place = Place.find(params[:place_id])
  end

  def set_reservasyon
    @reservasyon = Reservasyon.find(params[:id])
  end

  def authorize_customer!
    redirect_to @place, notice: "Not authorized" unless @reservasyon.customer_id == current_customer.id
  end
end
