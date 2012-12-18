class StaticPagesController < ApplicationController
  def home
  end

  def help
  end
  
  def users
    @users = User.all
  end
end
