class SessionsController < ApplicationController

  def new
    redirect_to '/auth/twitter' if Rails.env.production?
    redirect_to '/auth/developer'
  end

  def create
    #Session create logic here
    #@user = User.find_or_create_from_auth_hash(auth_hash)
    #self.current_user = @user
    #redirect_to '/'
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
