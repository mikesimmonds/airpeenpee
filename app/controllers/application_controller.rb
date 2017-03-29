class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_account!

  def current_user
    current_account.try(:user)
  end

end
