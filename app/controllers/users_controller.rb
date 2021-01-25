class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def logout
    log_out
    redirect_to games_path
  end

  def signin
    if logged_in?
      redirect_to user_path(current_user)
    else
      if User.find_by(email: params[:user][:email]) == nil
        return head(:forbidden)
        redirect_to loginuser_url
      else
        @user = User.find_by(email: params[:user][:email])
        return head(:forbidden) unless @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      end
    end
  end

  def create
    @user = User.new(user_params)
    if !@user.save
      #RETURN ERROR MESSAGE
      redirect_to newuser_url
    else
      @user.save
      session[:user_id] = @user.id
      redirect_to game_path(index)
    end
  end

  def edit
  end

  def show
    @user = User.find(params[:id])
    @game = Game.all
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

end
