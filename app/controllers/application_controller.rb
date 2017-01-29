class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :set_current_user

  def validadeUser
  	if session[:current_user_id] == nil
      flash[:error] = "Você não está logado."
      redirect_to root_url
    end
  end

  private
    def set_current_user
      @_current_user ||= session[:current_user_id] &&
        User.find_by(id: session[:current_user_id])
    end
end
