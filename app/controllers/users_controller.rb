class UsersController < ApplicationController

  ##We don't need add and create here as users will always come thru the account signup path before reaching this point.

  before_action :set_user

  def edit

  end

  def update
    # @user = User.new(user_params)
    @user.gender = user_params[:gender]
    byebug
    @user.save!
    redirect_to 'toilets_path'
  end

  private

  def user_params
    params.require(:user).permit(:gender, :account_id, :user_id)
  end

  def set_user
    @user = current_user # instead of User.find(params[:id]) for security reasons as someone could just change the url and access another account
  end

end
