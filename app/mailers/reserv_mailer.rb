class ReservMailer < ApplicationMailer
  def new_reserv(place)
    @place = place
    mail to: @place.owner.email, subject: 'You Have New Reservation for Your Place'
  end

end
