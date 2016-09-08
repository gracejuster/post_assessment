class UsersController < ApplicationController

  def new
    @user = User.new
  end
  # /users/new
  #GET 

  # create
  def create
    @user = User.create(params[:id])
    @user.name = params[:user][:name]
    @user.hometown = params[:user][:hometown]
    redirect_to '/user/@{params[:id]}'
  end 
  # /users
  #POST

  # index
  def index
    @users = User.all
  end 
  # /users
  #GET

  # show
  def show 
    @user = User.find(params[:id])
  end 
  # /users/:id
  #GET

  # edit
  def edit 
     @user = User.find(params[:id])
  end 
  # /users/:id/edit
  #GET

  # update
  def update 
     @user = User.find(params[:id])
     @user.update
     redirect_to '/user/@{params[:id]}'
  end 
  # /users/:id
  #PATCH

  # destroy
  def destroy  
    @user = User.find(params[:id])
    @user.delete
    redirect_to '/users'
  end 
  # /users/:id
  #DELETE 

end


# Write the controller action as if this was a rails controller
# Write the url that sends a user to the action. I have done the first one for you.
