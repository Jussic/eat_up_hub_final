class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
    		log_in user
    		  	redirect_to user
    		 else 
    		 	flash.now[:danger] = 'Invalid password'
    		 	render 'new'
    end 
  end

  def destroy
  	log_out 
  	redirect_to root_url
  end

  def current_user?(user)
  user == current_user
  end
  
end
