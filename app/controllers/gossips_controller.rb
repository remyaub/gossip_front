class GossipsController < ApplicationController
     
    def new
        @anonymous = User.create(first_name: "Anonymous", last_name: "0101010101")
        @gossip = Gossip.new
    
    end
    
    def create
        @anonymous = User.create(first_name: "Anonymous", last_name: "0101010101")
        @gossip = Gossip.new(title: params["title"], content: params["content"], author: @anonymous)

        if @gossip.save
            redirect_to root_path
        else @gossip.errors.any?
            render :new
        end

    end

    def show
        @gossips_show = Gossip.find(params[:id])
    end

end
