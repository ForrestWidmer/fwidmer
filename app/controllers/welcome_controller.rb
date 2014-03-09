class WelcomeController < ApplicationController
  def index
  end

  def about
    flash[:notice] = "This page is under construction. Sorry."
    redirect_to root_path
  end

  def updates
  end

  def services
  end
end
