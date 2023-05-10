class RegistrationController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
       if @user.save
        redirect_to root_path, notice: "Successfully created account"
       else
        puts @user.errors.any?
        render "/"
       end
    end

    private
    def user_params
        params.require(:user).permit(:email,:password,:password_confirmation)
    end
        
end