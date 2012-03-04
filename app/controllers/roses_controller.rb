class RosesController < ApplicationController
  def index
    @roses = Rose.all
  end

  def show
    @rose = Rose.find(params[:id])
  end

  def new
    @rose = Rose.new
  end

  def create
    @rose = Rose.new(params[:rose])
    if @rose.save
      redirect_to @rose, :notice => "Successfully created rose."
    else
      render :action => 'new'
    end
  end

  def edit
    @rose = Rose.find(params[:id])
  end

  def update
    @rose = Rose.find(params[:id])
    if @rose.update_attributes(params[:rose])
      redirect_to @rose, :notice  => "Successfully updated rose."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @rose = Rose.find(params[:id])
    @rose.destroy
    redirect_to roses_url, :notice => "Successfully destroyed rose."
  end
end
