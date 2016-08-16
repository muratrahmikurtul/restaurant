class ReservasyonsController < ApplicationController
  before_action :authenticate_customer!
  before_action :set_place

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
  end

  private

  def reservasyon_params
    params.require(:reservasyon).permit(:date,:number_of_people)
  end

  def set_place
    @place = Place.find(params[:place_id])
  end
end
