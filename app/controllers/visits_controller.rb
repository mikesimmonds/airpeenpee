class VisitsController < ApplicationController

  before_action :set_toilet, only: [:create, :new]


  def show

  end

  def new
    @visit = Visit.new
  end

  def create
    @visit = Visit.new(visit_params)
    @visit.user_id = current_user.id
    @visit.toilet_id = @toilet.id
    @visit.save!
    redirect_to root_path
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def visit_params
    params.require(:visit).permit(:rating, :comment, :has_paper)
  end

  def set_toilet
    @toilet = Toilet.find(params[:toilet_id])
  end

end
