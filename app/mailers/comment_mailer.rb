class CommentMailer < ApplicationMailer

  def new_comment(place)
    @place = place
    mail to: @place.owner.email, subject: 'You Have New Comment for Your Place'
  end

end
