class UserController < ApplicationController
  
  def signup
    @user = User.new
  end
  
  def create
    @user = User.new
  end
end
