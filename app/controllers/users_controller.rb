class UsersController < ApplicationController
  def show
    @users= User.all
  end
  def new 
    @users=User.new
  end
def create
=begin    @users = User.create('username' => params[:username],
      'email' => params[:email],
      'bio' => params[:bio])
=end

    @users = User.create('username' => params.require(:user)[:username],
     'email' => params.require(:user)[:email],
     'bio' => params.require(:user)[:bio])

      redirect_to users_path
end
end
