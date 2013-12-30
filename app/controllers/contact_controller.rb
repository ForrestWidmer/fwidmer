class ContactController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    if params[:message]
    NotificationsMailer.new_message(params[:message]).deliver
    redirect_to(root_path, :notice => "Message was successfully sent.")
    else
    flash[:alert] = "Please fill all fields."
    render :new
    end
  end
end
