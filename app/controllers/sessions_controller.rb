class SessionsController < ApplicationController

  def new
  	if signed_in?
  	@user=current_user
  end
  end

  def create
  	user = User.find_by(email: params[:session][:email].downcase , is_verified: 1)
    if user && user.authenticate(params[:session][:password])
      sign_in user
      @user= user
      render 'users/landingpage'
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

 def destroy
    sign_out
    redirect_to root_url
  end

def verify
redirect_to root_url
end
end