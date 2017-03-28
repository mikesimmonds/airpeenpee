class ToiletsController < ApplicationController

  skip_before_action :authenticate_account!, only: :index

  def index
    @toilets = Toilet.all
  end

  def show
  end

  def new
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
