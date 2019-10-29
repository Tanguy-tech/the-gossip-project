class GossipsController < ApplicationController

    def show
        @thegossips = Gossip.find(params[:id])
    end

    def index 
        @thegossip = Gossip.all
    end


    def new
        @thegossip = Gossip.new
    end

    def edit
        @thegossip = Gossip.find(params[:id])
    end

    def create
        puts "=" * 50
        puts params
        puts "=" * 50
        @thegossip = Gossip.create(params["thegossip_params"])
        if @thegossip.save
          redirect_to @thegossip
        else
          render 'new'
        end
      end

end