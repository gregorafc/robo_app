class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to robots_path, notice: "Dziekuję za rejestrację!"
    else
      render :new
    end
  end

  def start

  end


  private

    def user_params
      params.require(:user).permit(:email, :password, :password_confimation)
    end



end