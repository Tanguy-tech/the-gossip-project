class UsersController < ApplicationController

    def new
        User.new
    end
    def create
        User.create
    end
  
    def show
      @user = User.find(params[:id])
      @gossips = Gossip.where(user_id:params[:id])
    end
  
    def index
      @users=User.all
    end

end
