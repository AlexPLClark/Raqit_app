class RacketsController < ApplicationController
  before_action :set_racket, only: [:edit, :show, :update, :destroy]

  def index
    @rackets = Racket.all
  end

  def show
    @user = current_user
  end

  def new
    @racket = Racket.new
  end

  def create
    @racket = Racket.new(racket_params)
    @user = current_user
    @racket.user = @user
    if @racket.save
      redirect_to racket_path(@racket)
    else
      render :new
    end
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
    redirect_to user_path(current_user)
  end

  private

  def set_racket
    @racket = Racket.find(params[:id])
  end

  def racket_params
    params.require(:racket).permit(:name, :location, :description, :brand, :photo)
  end

end
