# class StopsController < ApplicationController

#   def new
#     @stop = Stop.new
#   end

#   def create
#     @stop = Stop.new(stop_params)

#     if @stop.save
#       flash[:notice] = "Created New stop"
#       redirect_to stop_path(@stop)
#     else
#       flash[:alert] = "Error creating new stop"
#       render('new')
#     end
#   end

#   def show
#     @stop = Stop.find(params[:id])
#   end

#   def edit
#     @stop = Stop.find(params[:id])
#   end

#   def update
#     @stop = Stop.find(params[:id])

#     if @stop.update(stop_params)
#       flash[:notice] = "Sucessfully updated stop"
#       redirect_to stop_path(@stop)
#     else
#       flash[:alert] = "Error updating stop"
#       render('edit')
#     end

#   end

#   def destroy
#     @stop = Stop.find(params[:id])
#     @stop.destroy
#     redirect_to root_path
#   end

# private

#   def stop_params
#     params.require(:stop).permit(:station_id, :line_id)
#   end

# end
