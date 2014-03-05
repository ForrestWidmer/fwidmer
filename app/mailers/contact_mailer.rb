class ContactMailer < ActionMailer::Base
  default :from => "fwidmer@fwidmer.com"
  default :to => "forrest.widmer@gmail.com"

  def new_email(message)
    @message = message
    mail(:to => "forrest.widmer@gmail.com", :subject => "#{@message.subject}", :body => "#{@message.name} #{@message.company} #{@message.email} #{@message.body}" )
  end
end
