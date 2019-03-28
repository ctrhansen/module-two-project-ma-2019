class UsersController < ApplicationController

    def index

    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.valid?
            @user.save
            redirect_to users_path
        else
            @user.errors.full_messages
            redirect_to new_user_path(@user)
        end
    end

    def user_params
        params.require(:user).permit(:email, :password)
    end


end
