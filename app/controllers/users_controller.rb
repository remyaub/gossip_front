class UsersController < ApplicationController
    layout 'create_user'
    def user
        @user = User.find(params[:id])
    end

    def new
        @user = User.new 
    end

    def create
        @user = User.create(email: params["email"], password: params["password"], first_name: params["first_name"], 
        last_name: params["last_name"], pseudo: params["pseudo"])

        if @user.save
            redirect_to root_path
        else @user.errors.any?
            render :new
        end
    end

    def index
        
    end

end
