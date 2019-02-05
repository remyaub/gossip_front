class IndexController < ApplicationController

  def home
    @gossip = Gossip.all
    @user = User.first
  end

end
