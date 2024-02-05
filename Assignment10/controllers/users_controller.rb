class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  
  def index 
    @users = User.all  
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save 
      redirect_to action: :index
    else
      render :new
    end
  end
  
  def show
    @user = User.find(params[:id])
  end
  def edit
    
  end
  
  def update
    if @user.update(user_params)
      redirect_to action: :index
    else
      render :edit
    end
  end

  def destroy
    if set_user
      @user.destroy
      redirect_to action: :index
    else
      render json: { message: 'User not found' }, status: 404
  end
  
  private
  def set_user
    @user = User.find(params[:id])
  end
  
  def user_params
    params.require(:user).permit(:name,:email,:age)
  end
end
