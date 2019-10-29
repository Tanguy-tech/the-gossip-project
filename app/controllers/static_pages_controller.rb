class StaticPagesController < ApplicationController

    def show_team
        puts "=" * 50
        puts "Voici notre super Team du turfu!! "
        puts "=" * 50
    end

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

    def show_contact
        puts "=" * 50
        puts "Pages contact de la team!! "
        puts "=" * 50
    end
end
