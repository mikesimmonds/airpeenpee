class ToiletsController < ApplicationController

  skip_before_action :authenticate_account!, only: :index

  def index
    @toilets = Toilet.all
  end

  def show
    @toilet = Toilet.select(user_id: current_account.id)
  end

  def new
    @toilet = Toilet.new
  end

  def create

  end

  def edit
  end

  def update
  end

  def delete
  end
end
