class HomepageController < ApplicationController

    def homepage
        puts "=" * 50
        puts "Nous sommes sur la age d'acceuil"
        puts "=" * 50
    end


    def homepage_user
        puts "=" * 50
        puts params[:user]
        @user = params[:user]
        #Gossip.all.each do |gossip|
        #   @title = gossip.title
        #end
        puts "=" * 50
    end
end
