class HomeController < ApplicationController
  before_action :authenticate_user!, only: :token
  

  def token
  end

  def index
  	@lists =  List.all(:include => :tasks,:conditions => {:user_id => current_user.id})  	

  end

end
