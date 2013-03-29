class ContactusMailer < ActionMailer::Base

  default to: "enquiry@seamconnect.com"
  default from: "support@seamconnect.com"

  def new_message(message)
    @message = message
    mail(:subject => "Contact Us Notification")
  end

end
