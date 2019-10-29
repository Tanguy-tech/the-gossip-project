class GossipController < ApplicationController

    def show_gossip
        @thegossip = Gossip.find(params[:id])
    end
end
