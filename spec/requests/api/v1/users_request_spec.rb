require 'rails_helper'

RSpec.describe 'Users Request API' do
  describe 'Happy Path' do
    it 'creates/registers a user' do
      user_params = {
        name: Faker::Name.name,
        email: Faker::Internet.email,
        password: 'password123',
        password_confirmation: 'password123'
      }

      headers = { 'CONTENT_TYPE' => 'application/json' }

      post '/api/v1/users', headers: headers, params: JSON.generate(user: user_params)

      expect(response).to be_successful
      expect(response).to have_http_status(201)

      user_response = JSON.parse(response.body, symbolize_names: true)

      expect(user_response).to be_a Hash
      expect(user_response).to have_key :data
      expect(user_response[:data]).to be_a Hash
      expect(user_response[:data]).to have_key :type
      expect(user_response[:data][:type]).to eq('user')
      expect(user_response[:data]).to have_key :id
      expect(user_response[:data][:id]).to be_a String
      expect(user_response[:data]).to have_key :attributes
      expect(user_response[:data][:attributes]).to be_a Hash
      expect(user_response[:data][:attributes]).to have_key :name
      expect(user_response[:data][:attributes][:name]).to be_a String
      expect(user_response[:data][:attributes]).to have_key :email
      expect(user_response[:data][:attributes][:email]).to be_a String
      expect(user_response[:data][:attributes]).to have_key :api_key
      expect(user_response[:data][:attributes][:api_key]).to be_a String

      created_user = User.last
      expect(created_user.name).to eq(user_params[:name])
      expect(created_user.email).to eq(user_params[:email])
      expect(created_user.api_key).to be_a String
    end
  end

  describe 'Sad Path' do
    describe 'Email address is not unique' do
      before :each do
        @user1 = create(:user, email: 'same@gmail.com')

        user_params = {
          name: Faker::Name.name,
          email: 'same@gmail.com',
          password: 'password123',
          password_confirmation: 'password123'
        }

        headers = { 'CONTENT_TYPE' => 'application/json' }

        post '/api/v1/users', headers: headers, params: JSON.generate(user: user_params)
      end

      it 'does not create a new user' do
        expect(response).to_not be_successful
        expect(response).to have_http_status(400)

        expect(User.last.name).to eq(@user1.name)
      end

      it 'returns an error message in the response' do
        user_response = JSON.parse(response.body, symbolize_names: true)

        expected_error_hash = {
          "message": 'User could not be created',
          "error": 'Email already exists'
        }

        expect(user_response).to eq(expected_error_hash)
      end
    end

    describe 'password and password confirmation do not match' do
      before :each do
        @user1 = create(:user)

        user_params = {
          name: Faker::Name.name,
          email: Faker::Internet.email,
          password: 'password123',
          password_confirmation: 'notthesame'
        }

        headers = { 'CONTENT_TYPE' => 'application/json' }

        post '/api/v1/users', headers: headers, params: JSON.generate(user: user_params)
      end

      it 'does not create a new user' do
        expect(response).to_not be_successful
        expect(response).to have_http_status(400)

        expect(User.last.name).to eq(@user1.name)
      end

      it 'returns an error message in the response' do
        user_response = JSON.parse(response.body, symbolize_names: true)

        expected_error_hash = {
          "message": 'User could not be created',
          "error": 'Password and password confirmation must match'
        }

        expect(user_response).to eq(expected_error_hash)
      end
    end
  end
end
