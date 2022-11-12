class Api::V1::UsersController < ApplicationController
  def create
    user = User.new(user_params)
    if user.save
      api_key = Faker::Alphanumeric.alphanumeric(number: 27)
      user.update(api_key: api_key)
      render json: UserSerializer.new(user), status: 201
    else
    end
  end

  def user_params
    params.require(:user).permit(:id, :name, :email, :api_key)
  end
end
