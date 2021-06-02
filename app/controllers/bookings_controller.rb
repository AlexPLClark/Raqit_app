class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @racket = Racket.find(params[:racket_id])
    @booking = Booking.new
  end

  def create
    @racket = Racket.find(params[:racket_id])
    @booking = Booking.new(booking_params)
    @user = current_user
    @booking.racket = @racket
    @booking.user = @user
    if @booking.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @user = current_user
    if @booking.update(booking_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @user = current_user
    @booking.destroy
    redirect_to user_path(@user), notice: 'Booking was successfully destroyed'
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
