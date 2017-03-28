class UsersController < ApplicationController

  ##We don't need add and create here as users will always come thru the account signup path before reaching this point.

  before_action :set_user

  def edit

  end

  def update
  end

  private

  def set_user
    @user = current_user # instead of User.find(params[:id]) for security reasons
  end

end
