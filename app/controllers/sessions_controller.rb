class SessionsController < ApplicationController
  
  def new
  
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user
      log_in user
      flash[:notice] = "Logged in succesfully."
      redirect_to '/'
    else
      flash[:alert] = "Invalid email/password."
      redirect_to '/login'
    end
  end

  def destroy
		session[:user_id] = nil
		reset_session
    redirect_to '/'
  end






end
