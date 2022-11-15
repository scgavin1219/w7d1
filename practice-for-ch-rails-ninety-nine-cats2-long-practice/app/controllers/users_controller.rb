class UsersController < ApplicationController

    def new
    end

    def create
        @user = User.new(user_params)
        if @user.save!
            redirect_to cats_url
        else
            render :new
        end
    end

    private
    def user_params
        params.require(:user).permit(:username, :password_digest, :session_token)
    end
end