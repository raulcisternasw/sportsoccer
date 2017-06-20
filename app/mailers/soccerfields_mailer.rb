class SoccerfieldsMailer < ApplicationMailer
  default from: 'r.cisternas.w@gmail.com'

  def soccerfield_email(soccerfield)
    @soccerfield = soccerfield
    mail(to: @soccerfield.user.email, subject: 'Arriendo cancha')
  end
end
