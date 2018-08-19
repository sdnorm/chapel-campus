class EmailsController < ApplicationController

  def sermon_notes
    SermonAndNotesMailer.new.general_email("bobby")
    flash[:notice] = "Your sermon notes should arrive in your inbox soon!"
    redirect_to root_path
  end

end
