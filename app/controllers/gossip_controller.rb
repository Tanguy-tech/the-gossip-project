class GossipController < ApplicationController

    def show
        @thegossip = Gossip.find(params[:id])
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

end