class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      token = encode_token(user_id: @user_id)
      render json: {data: @user,token: token}
    else 
      render json:{data: @user.errors.full_messages}, status: 422
    end
  end
  private 
  def user_params
    params.require(:user).permit(:user_name,:password)
  end

end
