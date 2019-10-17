class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    # stored_location_for(resource) || root_path
    if resource.roles.find_by(name: 'admin')
      admin_root_path
    else
      root_path
    end
  end

  def access_denied(exception)
    redirect_to root_path, alert: exception.message
  end
end
