class V1::UsersController < ApplicationController
    
    def index
        @users = User.all
        
        render json: @users, status: :ok 
    end
    
    def create
        @user = User.new(user_params)
        
        @user.save
        render json: @user, status: :created
        
            
    end
    
    def show
        @user = User.find(params[:id]) 
        
    end
    
    private
    def user_params
        params.require(:user).permit(:rfid_token)
    end
end
