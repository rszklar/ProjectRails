class SessionsController < ApplicationController
skip_before_action :authorize
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to admin_url, notice: "Zalogowałeś się poprawnie."
    else
      redirect_to login_url, alert: "Złe hasło lub/i adres e-mail."
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to ads_url, notice: "Zostałeś poprawnie wylogowany"
  end
end