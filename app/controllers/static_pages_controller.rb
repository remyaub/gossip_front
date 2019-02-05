class StaticPagesController < ApplicationController
  def team
  end

  def contact
  end

  def welcome
    @user = User.find_by(first_name: params[:first_name])
  end
  
end
