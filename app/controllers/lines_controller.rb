class LinesController < ApplicationController

  def index
    @lines = Line.all
  end

  def new
    @line = Line.new
  end

  def create
    @line = Line.new(line_params)
    if @line.save
      flash[:notice] = 'successfully saved'
      redirect_to line_path(@line)
    else
      flash[:alert] = 'please fix the following errors'
      render 'lines/new.html.erb'
    end
  end

  def edit
    @line = Line.find(params[:id])
  end

  def show
    @line = Line.find(params[:id])
  end

  def update
    @line = Line.find(params[:id])

    if @line.update(params[:line])
      flash[:notice] = "update successful"
      redirect_to line_path(@line)
    else
      flash[:alert] = "Update Error!"
      render 'edit'
    end
  end

  def destroy
    @line = Line.find(params[:id])
    @line.destroy
    flash[:notice] = "line deleted from database"
    redirect_to(lines_path)
  end

private
  def line_params
    params.require(:line).permit(:name)
  end

end
