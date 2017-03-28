class UsersController < ApplicationController

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
