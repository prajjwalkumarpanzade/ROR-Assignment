class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end
  
  def create
    @users = user_params
    @users = User.new(@users)
    if @users.save
      render json: @users, status: :created, location: @users
    end
  end
  
  def update
    @user = find_user
    if @user.update(params.require(:user).permit(:name, :address, :phone_no, :role))
      render json: { message: 'User successfully updated.' }, status: 200
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end
  
  def show
    begin
      @user = find_user
      render json: @user, status: 200
    rescue ActiveRecord::RecordNotFound
      render json: { message: 'User not found' }, status: 404
    end 
  end
  
  def destroy
    @user = find_user
    if @user.destroy
      render json: { message: 'User successfully deleted.' }, status: 200
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :address, :phone_no, :role)
  end
  
  def find_user
    User.find(params[:id])
  end
end
