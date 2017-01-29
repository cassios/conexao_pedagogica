class LoginController < ApplicationController
  def index
  	if @_current_user
  		redirect_to @_current_user
  	end
  end

  # "Create" a login, aka "log the user in"
  def create
    if user = User.Authenticate(params[:login][:email], params[:login][:password])
      # Save the user ID in the session so it can be used in
      # subsequent requests
      session[:current_user_id] = user.id
      redirect_to root_url
    else
    	flash[:error] = "Email ou senha incorreto."
    	render :index
    end
  end

  # "Delete" a login, aka "log the user out"
  def destroy
    # Remove the user id from the session
    @_current_user = session[:current_user_id] = nil
    redirect_to root_url
  end
end
