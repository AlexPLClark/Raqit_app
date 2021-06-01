class RacketsController < ApplicationController
  before_action :set_racket, only: [:edit, :update, :destroy]

  def index
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
    if @racket.update(racket_params)
      redirect_to racket_path(@racket)
    else
      render :edit
    end
  end

  def destroy
    @racket.destroy
    redirect_to rackets_path
  end

  private

  def set_racket
    @racket = Racket.find(params[:id])
  end

  def racket_params
    params.require(:racket).permit(:name, :location, :description, :brand, :image_url)
  end
end
