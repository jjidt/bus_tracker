class StationsController < ApplicationController

  def index
    @stations = Station.all
  end

  def new
    @station = Station.new
  end

  def create
    @station = Station.new(line_params)

    if @station.save
      flash[:notice] = "Created New Station"
      redirect_to station_path(@station)
    else
      flash[:alert] = "Error creating new station"
      render('new')
    end
  end

  def show
    @station = Station.find(params[:id])
  end

  def edit
    @station = Station.find(params[:id])
  end

  def update
    @station = Station.find(params[:id])

    if @station.update(line_params)
      flash[:notice] = "Sucessfully updated station"
      redirect_to station_path(@station)
    else
      flash[:alert] = "Error updating station"
      render('edit')
    end

  end

  def destroy
    @station = Station.find(params[:id])
    @station.destroy
    redirect_to root_path
  end

private
  def line_params
    params.require(:station).permit(:name)
  end

end
