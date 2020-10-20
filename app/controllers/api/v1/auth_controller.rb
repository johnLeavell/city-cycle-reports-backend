class Api::V1::AuthController < ApplicationController
    def create
      user = User.find_by(username: params[:username])
      if user && user.authenticate(params[:password])
        render json: user
      else
        render json: { error: 'invalid username or password' }
      end
    end

    def login
      user = User.find_by(username: params[:username])

      if user && user.authenticate(params[:password])
        payload = {user_id: user.id}
        token = encode(payload)
        render :json => {user: user, token: token}
      else
        render json: {error: "User not found"}
      end
    end

    def token_authenticate
      token = request.headers["Authenticate"]
      user = User.find(decode(token)["user_id"])

      render json: user
    end
  
    def show
    end
  end


