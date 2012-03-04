class HeightsController < ApplicationController
  def index
    @heights = Height.all
  end

  def show
    @height = Height.find(params[:id])
  end

  def new
    @height = Height.new
  end

  def create
    @height = Height.new(params[:height])
    if @height.save
      redirect_to @height, :notice => "Successfully created height."
    else
      render :action => 'new'
    end
  end

  def edit
    @height = Height.find(params[:id])
  end

  def update
    @height = Height.find(params[:id])
    if @height.update_attributes(params[:height])
      redirect_to @height, :notice  => "Successfully updated height."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @height = Height.find(params[:id])
    @height.destroy
    redirect_to heights_url, :notice => "Successfully destroyed height."
  end
end
