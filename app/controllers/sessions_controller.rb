class SessionsController < ApplicationController
  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password]) # get this from has_secure_password
      session[:user_id] = user.id
      redirect_to root_url, notice: "Logged in"
    else
      flash.now.alert = "Email or password invalid"
      render "new"
  end
end

def destroy
  session[:user_id] = nil
  redirect_to root_url, notice: "Logged Out"
end

end
