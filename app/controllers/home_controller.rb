class HomeController < ApplicationController
  before_action :authenticate_user!, only: :token
  before_filter :authenticate_user!, :configure_permitted_parameters, if: :devise_controller?

  def token
  end

  def index
  	@lists =  List.all(:include => :tasks)  	
  end

end
