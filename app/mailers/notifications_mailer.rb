class NotificationsMailer < ActionMailer::Base
  default from: "fwidmer@fwidmer.com"
  default to: "forrest.widmer@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "New message, subject: #{message[:subject]}")
  end

end
