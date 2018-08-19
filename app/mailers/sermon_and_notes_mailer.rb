class SermonAndNotesMailer < ApplicationMailer

  def general_email to_address, sermon, sermon_notes
    @user = params[:user]
    @url  = 'http://example.com/login'
    mail(to: "spencerdnorman@gmail.com", subject: 'Welcome to My Awesome Site')
  end

end
