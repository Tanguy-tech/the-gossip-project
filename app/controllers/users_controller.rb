class UsersController < ApplicationController

    def new
        @user = User.new
    end

    
    def create
      user_params = params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
        @user = User.new(user_params)
        if @user.valid?
          render 'new'
        else
          render 'new'
        end
    end

  
    def show
      @user = User.find(params[:id])
      @gossips = Gossip.where(user_id:params[:id])
    end
  

    def index
      @users=User.all
    end

end
