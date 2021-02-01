class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(name: params[:user][:name])
    return head(:forbidden) unless @user.authenticate(params[:user][:password])
    session[:user_id] = @user.id
  end

  def omniauth
    
    if logged_in?
      redirect_to user_path(current_user)
    else
      @user = User.from_omniauth(auth)      
      if @user.save
        session[:user_id] = @user.id
          @current_user = current_user
        flash[:notice] = "Log in success!"
        redirect_to user_path(@user)
      else
        redirect_to root_path
      end
    end
  end

end