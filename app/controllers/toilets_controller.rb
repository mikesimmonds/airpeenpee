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

  def directions
    # need tomake a hash containing the current user positon and the closest toulet locateion
    @current_user_address = "Spui 55, Amsterdam"
    @current_user_location = Geocoder.coordinates(@current_user_address)
    @current_user_lng = @current_user_location[1]
    @current_user_lat = @current_user_location[0]
    @current_toilet_lng = Toilet.find(params[:toilet_id]).longitude
    @current_toilet_lat = Toilet.find(params[:toilet_id]).latitude

    @toilets = [{longitude: @current_toilet_lng, latitude: @current_toilet_lat}, {longitude: @current_user_lng, latitude: @current_user_lat}]
    @hash = Gmaps4rails.build_markers(@toilets) do |toilet, marker|
      marker.lat toilet[:latitude]
      marker.lng toilet[:longitude]
    end
  end

  def show
    @toilet = Toilet.select(user_id: current_account.id)
    @showtoilet = Toilet.find(params[:id])
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
