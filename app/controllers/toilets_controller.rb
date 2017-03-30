class ToiletsController < ApplicationController

  skip_before_action :authenticate_account!, only: :index

  def index
    # @toilets = Toilet.all
    @toilets = Toilet.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@toilets) do |toilet, marker|
      marker.lat toilet.latitude
      marker.lng toilet.longitude
      # marker.infowindow render_to_string(partial: "/toilets/map_box", locals: { toilet: toilet })
    end
  end

  def show
    @toilet = Toilet.select(user_id: current_account.id)
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
