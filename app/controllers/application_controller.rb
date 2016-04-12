class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :store_loc

  def after_sign_in_path_for(resource)
    if(request.referrer).include?('store_id')
      store_id = URI.parse(request.referrer).query.split('=').last
      store_url(store_id)
    else
      request.env['omniauth.origin'] || stored_location_for(resource) || root_path
    end
  end

  def store_loc
    session[:store_id] = params[:store_id]
  end
end
