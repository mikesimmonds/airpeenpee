class RegistrationsController < Devise::RegistrationsController

  ##This controller inherits from the Devise controller (which is hidden for security reasons)

  ##Thia controller overwrites the default methods for #create and #after_sign_up_path_for

  ##the create method takes everything the original create method did (SUPER) and also creates a user account (a  bit like when you create a new object before creating a form)

  ##The after_sign_up_path_for method reditectds the user to the newly created account to the edit_user_path which allows them to fill in the details.

  def new
    super
  end


  def create
    super do
      @user = User.new(account_id: resource.id)
      @user.save
    end
  end

  def update
    super

  end

  def after_sign_up_path_for(resource)
    edit_user_path(resource.id)
  end

end