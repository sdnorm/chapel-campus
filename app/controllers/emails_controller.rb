class EmailsController < ApplicationController

  before_action :set_sermon, only: [:sermon_notes]
  before_action :set_notes, only: [:sermon_notes]
  before_action :set_recipient_email, only: [:sermon_notes]

  def sermon_notes
    SermonAndNotesMailer.with(sermon: @sermon, recipient_email: @recipient_email, notes: @notes).general_email.deliver_later
    flash[:notice] = "Your sermon notes should arrive in your inbox soon!"
    redirect_to root_path
  end

  private

    def set_sermon
      @sermon = Sermon.includes(:sermon_sections).find(params[:sermon_id])
    end

    def set_notes
      make_notes = {}
      @sermon.sermon_sections.each do |section|
        section_param = section.sermon_note_param_id
        make_notes << "#{section_param}": params[":#{section_param}"
      end
      @notes = make_notes
    end

    def set_recipient_email
      @recipient_email = params[:email_address]
    end

end
