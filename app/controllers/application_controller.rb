class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_action :require_login

private

  # def require_login
  #   unless current_user
  #     # redirect_to login_url 
  #     # render 'index'
  #     redirect_to welcome_index_path
  #   end
  # end

  def require_login
    unless !current_user.nil?
      respond_to do |format|
        format.html do
          flash[:error] = "You must be logged in to access this content."
          redirect_to welcome_index_path
        end
        format.js do
          render 'welcome/fail'
        end
      end
    end
 end

  helper_method :current_user

  def current_user
    return @current_user if @current_user 
    if session[:user_id]
      @current_user = User.find session[:user_id]
    end
  end
end