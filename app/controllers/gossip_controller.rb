class GossipController < ApplicationController

    def show_gossip
        puts "=" * 50
        puts "nous voici sur la page d'un Potin! "
        Gossip.all.each do |which|
            which.id
        end
        puts "=" * 50
    end
end
