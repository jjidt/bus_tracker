class LinesController < ApplicationController

  def index
    @lines = Line.all
  end

  def new
    @line = Line.new
  end

  def create
    @line = Line.new(params[:line])
    if @line.save
      flash[:notice] = 'successfully saved'
      redirect_to lines_path(@line)
    else
      flash[:alert] = 'please fix the following errors'
      render 'new'
    end
  end

  def edit
    @line = Line.find(params[:id])
  end

end
