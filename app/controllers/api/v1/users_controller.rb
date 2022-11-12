class Api::V1::UsersController < ApplicationController
  def create
    user = User.new(user_params)
    if user.save
      user.generate_api_key
      render json: UserSerializer.new(user), status: 201
    else
      render json: ErrorSerializer.invalid_email, status: 400
    end
  end

  private

  def user_params
    params.require(:user).permit(:id, :name, :email, :api_key)
  end
end
