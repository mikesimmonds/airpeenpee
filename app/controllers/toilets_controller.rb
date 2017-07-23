class ToiletsController < ApplicationController

  skip_before_action :authenticate_account!, only: [:index, :jsonindex]

  def index
    @user_location = params[:user_location] if params[:user_location]
    session[:user_location] = @user_location
    # @toilets = Toilet.all
    @closest_toilets = Toilet.near(@user_location, 2)
    @closest_toilet = @closest_toilets[0]


    @toilets = Toilet.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@closest_toilets) do |toilet, marker|
      marker.lat toilet.latitude
      marker.lng toilet.longitude
      # marker.infowindow render_to_string(partial: "/toilets/map_box", locals: { toilet: toilet })
    end


    respond_to do |format|
      format.json {render json: @closest_toilets}
      format.html     {flash[:notice]= "The closest toilet to your location is #{@closest_toilet.location_name}, #{@closest_toilet.location_address}"}
    end

  end

  def directions

    @current_user_address = session[:user_location]
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
    @user_location = params[:user_location] if params[:user_location]
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

  def home
    @user_location = Toilet.new
  end


  private

  def toilet_params
    params.require(:toilet).permit(:location_name, :toilet_type, :location_address, :price, :shittable, :has_paper)
  end

end
