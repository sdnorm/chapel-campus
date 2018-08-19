class EmailsController < ApplicationController

  def sermon_notes
    SermonAndNotesMailer.with(user: "bobby").general_email.deliver_later
    redirect_to :root_path, flash: "Your sermon notes should arrive in your inbox soon!"
  end

end
