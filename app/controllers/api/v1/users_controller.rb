class Api::V1::UsersController < ApplicationController
    
    def index
        users = User.all
        render json: users
    end

    def show 
        user = User.find(params[:id])
        if user.valid?
            render json: user
        else
            render json: {message: "User could not be found"}
        end
    end
    
    def create
        user = User.create(user_params)
        if user.valid?
            user.save
            render json: user
        else
            render json: {message: "User could not be created"}
        end
    end

    def update 
        @user.update(user_params)
        render json: @user
    end

    def destroy
        user = User.find(params[:id])
        if user.valid?
            user.destroy
            render json: user
        else
            render json: {error: "User could not be deleted"}
        end
    end

    private

    def user_params
        params.permit(:username, :password, :firstname, :lastname, :email)
    end

end
