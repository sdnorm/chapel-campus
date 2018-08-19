class SermonAndNotesMailer #< ApplicationMailer

  def initialize user, to_address, sermon, sermon_notes
    @user = user
    @to_address = to_address
    @sermon = sermon
    @sermon_notes = sermon_notes
  end

  def general_email
    mg_client = Mailgun::Client.new ENV["MAILGUN_SECRET_API_KEY"]
    message_params =  {
      from: 'bob@sending_domain.com',
      to: 'spencerdnorman@gmail.com',
      subject: 'The Ruby SDK is awesome!',
      html: html_string_for_email#"<html>HTML version of the <strong>body</strong><p>new line</p><p>#{@user}</p></html>"
    }
    mg_client.send_message ENV["MAILGUN_DOMAIN"], message_params
  end

  def html_string_for_email
    email_body = ""
    @sermon.sections.each do |section|
      my_note = @sermon_notes.select {|k,v| k = section.personal_note_title}
      email_body.concat(
        "<strong>#{section.title}</strong>
         <p>#{section.speaker_note}</p>
         <p><strong>My notes:</strong></p>
         <p>#{my_note.value}</p>"
      )
    end
    "<html>#{email_body}</html>"
  end

end
