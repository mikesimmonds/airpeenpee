class ToiletsController < ApplicationController

  skip_before_action :authenticate_account!, only: :index

  def index
    @toilets = Toilet.all
  end

  def show
    @toilets = Toilets.where(toilet.user.id == current_account.id)
  end

  def new
      @toilet = Toilet.new
  end

  def create
    @toilet = Toilet.new(toilet_params)
    @toilet.user_id = current_user.id
    @toilet.save
    redirect_to root_path

  end

  def edit
  end

  def update
  end

  def delete
  end

  def toilet_params
    params.require(:toilet).permit(:location_name, :toilet_type, :location_address, :price, :shittable, :has_paper)
  end

end
