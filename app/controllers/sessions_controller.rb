class SessionsController < ApplicationController
    layout 'log_layout'
    def new
  
    end

    def create
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            session[:first_name] = user.first_name
            redirect_to home_path
        else
            flash[:danger] = 'Invalid email/password combination'
            render 'new'
        end
    end

    def destroy
        if session.delete(:user_id)
            redirect_to new_session_path
        end
    end

end