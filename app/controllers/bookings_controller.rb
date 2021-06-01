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
    @booking.racket = @racket
    @booking.user = @user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @racket = @booking.racket
    @booking.destroy
    redirect_to racket_path(@racket), notice: 'Booking was successfully destroyed'
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
