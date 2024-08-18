class TripController < ApplicationController
  def index
    if params[:show_all] == '1'
      @trips = Trip.all
    else
      @trips = Trip.where(has_traveled: false)
    end
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    
    if @trip.save
      redirect_to top_path, notice: '旅行を新規に作成しました。'
    else
      puts "-----"
      puts "処理失敗"
      puts "-----"
    end
  end

  def show
    @trip = Trip.find(params[:id])
  end
  def edit
    @trip = Trip.find(params[:id])
  end

  def update
    @trip = Trip.find(params[:id])
    @trip.update(trip_params)

    redirect_to trip_path, notice: '旅行情報を編集しました。'
  end

  def destroy
    @trip = Trip.find(params[:id])
    @trip.destroy

    redirect_to top_path, notice: '旅行を新規に作成しました。'
  end

  private
  def trip_params
    params.require(:trip).permit(:title, :detail, :start_date, :end_date, :image, :has_traveled)
  end
end
