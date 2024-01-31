class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end
  def create
    @users = User.new(params.require(:user).permit(:name, :address, :phone_no, :role))
    if @users.save
      render json: @users, status: :created, location: @users
    end
  end
  def update
    @user = User.find(params[:id])
    if @user.update(params.require(:user).permit(:name, :address, :phone_no, :role))
      render json: { message: 'User successfully updated.' }, status: 200
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end
  def show
    begin
      @user = User.find(params[:id])
      render json: @user, status: 200
    rescue ActiveRecord::RecordNotFound
      render json: { message: 'User not found' }, status: 404
    end 
  end
  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      render json: { message: 'User successfully deleted.' }, status: 200
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end
end
