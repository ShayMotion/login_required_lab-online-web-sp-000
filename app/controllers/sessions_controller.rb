class SessionsController < ApplicationController
    before_action :require_login
    
  def index
end
  
  def new
  end

def create
   @user = User.create(params(:user)
   session[:user_id] = @user.id
   redirect_to '/'
end


  def current_user
end

end
