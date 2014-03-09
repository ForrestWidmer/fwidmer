#Comment out bottom portion and uncomment top to prevent registrations.

#class RegistrationsController < Devise::RegistrationsController
#  def new
#    flash[:notice] = "Registrations are not open."
#    redirect_to root_path
#  end

#  def create
#    flash[:notice] = "Registrations are not open."
#    redirect_to root_path
#  end
#end

class RegistrationsController < Devise::RegistrationsController
  protected 
  def after_update_path_for(resource)
    edit_user_registration_path(resource)
  end
end