class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception   
   before_filter :require_login

private

  def require_login
  	controller=request.fullpath.split('/')
  	if controller[1] != "users"
    unless current_user
      flash[:error] = "Acesso negado necessario login"
      redirect_to "/users/sign_in"
    end
end
  end
  

  protected

  def configure_permitted_parameters
  	devise_parameter_sanitizer.for(:sign_up) { |u| u.permit! }
  end

end
