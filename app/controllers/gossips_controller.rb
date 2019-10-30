class GossipsController < ApplicationController

    def show
        @gossip = Gossip.find(params[:id])
        @user=User.find(@gossip.user_id)
    end

    def index 
      @gossips = Gossip.all
    end


    def new
        @gossip = Gossip.new
    end

    def edit
      @gossip = Gossip.find(params[:id])
    end

    def update
      @gossip = Gossip.find(params[:id])
      gossip_params = params.require(:gossip).permit(:title, :content)
      @gossip.update(gossip_params)
      redirect_to gossip_path
    end

    def create
        puts "=" * 50
        puts params
        puts "=" * 50
        anonymous=User.new(first_name:"Anonymous", last_name:"unknown",age: 99,description: "unknown",email:"unknown#{rand(1000)}@mail.com",city_id:City.all.sample.id)
        anonymous.save
        @gossip = Gossip.new(title: params[:gossip][:title], content: params[:gossip][:content], user_id: anonymous.id)
        if @gossip.save
          redirect_to gossips_path
        else
          render 'new'
        end
    end


    def destroy
      @gossip = Gossip.find(params[:id])
      @gossip.destroy
      redirect_to gossips_path
    end

end