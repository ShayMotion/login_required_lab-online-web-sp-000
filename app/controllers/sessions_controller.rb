class SessionsController < ApplicationController

  def hello
    @user = current_user
  end

  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    reset_session if session[:name]
    redirect_to login_path
  end

end