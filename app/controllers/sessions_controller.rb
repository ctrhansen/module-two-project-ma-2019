class SessionsController < ApplicationController

    def new
    end

    def create
        @user = User.find_by(email: params[:email])
        if @user.authenticate(params[:password])
            session[:current_user_id] = @user.id
            redirect_to users_path
        end
    end


end
