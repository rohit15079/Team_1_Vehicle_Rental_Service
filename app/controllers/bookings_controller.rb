class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  # GET /bookings
  # GET /bookings.json
  def index                               # Will return all bookings for the booking page
    @bookings = Booking.all
  end

  # GET /bookings/1
  # GET /bookings/1.json
  def show
  end

  # GET /bookings/new
  def new                                 # Will return vehicles available for booking
    @booking = Booking.new
    @vehicles = Vehicle.where("category = :cat",{cat: params[:category]})
    @vehicles = @vehicles.where("isAc = :isAC",{isAC: params[:isAc]})

    @bookings = Booking.where("end_date >= :st_date AND start_date <= :en_date", {st_date: params[:start_date], en_date: params[:end_date]})


  end

  # GET /bookings/1/edit
  def edit
  end

  # POST /bookings
  # POST /bookings.json
  def create                                  # To create a new booking
    @booking = Booking.new(booking_params)

    respond_to do |format|
      if @booking.save
        sleep(10)
        format.html { redirect_to new_booking_path, notice: 'Booking was successfully created.' }
        format.json { render :show, status: :created, location: @booking }
      else
        format.html { render :new }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookings/1
  # PATCH/PUT /bookings/1.json
  def update                                      # To update existing booking
    respond_to do |format|
      if @booking.update(booking_params)
        format.html { redirect_to @booking, notice: 'Booking was successfully updated.' }
        format.json { render :show, status: :ok, location: @booking }
      else
        format.html { render :edit }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookings/1
  # DELETE /bookings/1.json
  def destroy                                     # To delete a booking
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to bookings_url, notice: 'Booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def booking_params
      params.require(:booking).permit(:vehicle_id, :start_date, :end_date, :customer_name, :customer_contact)
    end
end
