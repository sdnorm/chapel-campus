class SermonAndNotesMailer < ApplicationMailer

  default from: "sermonnotes@thechapel.io", to: "spencerdnorman@gmail.com"

  def general_email
    @sermon = params[:sermon]
    @recipient_email = params[:recipient_email]
    @notes = params[:notes]
    mail(subject: "Sermon and Notes for -- #{@sermon.title}", to: @recipient_email)
  end

end
