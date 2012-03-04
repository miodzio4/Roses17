class FlowerColorsController < ApplicationController
  def index
    @flower_colors = FlowerColor.all
  end

  def show
    @flower_color = FlowerColor.find(params[:id])
  end

  def new
    @flower_color = FlowerColor.new
  end

  def create
    @flower_color = FlowerColor.new(params[:flower_color])
    if @flower_color.save
      redirect_to @flower_color, :notice => "Successfully created flower color."
    else
      render :action => 'new'
    end
  end

  def edit
    @flower_color = FlowerColor.find(params[:id])
  end

  def update
    @flower_color = FlowerColor.find(params[:id])
    if @flower_color.update_attributes(params[:flower_color])
      redirect_to @flower_color, :notice  => "Successfully updated flower color."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @flower_color = FlowerColor.find(params[:id])
    @flower_color.destroy
    redirect_to flower_colors_url, :notice => "Successfully destroyed flower color."
  end
end
