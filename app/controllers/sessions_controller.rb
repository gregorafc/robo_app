class SessionsController < ApplicationController
  def new
  end

  def create
      user = User.find_by_email(params[:email])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to lock_url, notice: "Zalogowany!!!"
      else
        redirect_to login_path,  notice:  "Mail albo hasło błędne"
      end
  end

  def destroy
    session[:user_id] = nil
    redirect_to robots_path, notice: "Wylogowany!"
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confimation)
  end

end
