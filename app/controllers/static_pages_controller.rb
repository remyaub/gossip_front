class StaticPagesController < ApplicationController
  
  def team
  end

  def contact
  end

  def welcome
    id = session[:user_id]
    @user = User.find(id: params[:id])
  end
  
end
