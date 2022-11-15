class Api::V1::UsersController < ApplicationController
  def create
    user = User.new(user_params)
    if user_params[:password] != user_params[:password_confirmation]
      render json: ErrorSerializer.password_confirmation, status: 400
    elsif user.save
      user.generate_api_key
      render json: UserSerializer.new(user), status: 201
    else
      render json: ErrorSerializer.invalid_email, status: 400
    end
  end

  def login
    user = User.find_by(email: user_params[:email])
    if user && user.authenticate(user_params[:password])
      render json: UserSerializer.new(user)
    else
      render json: ErrorSerializer.invalid_login, status: 400
    end
  end

  private

  def user_params
    params.require(:user).permit(:id, :name, :email, :api_key, :password, :password_confirmation)
  end
end
