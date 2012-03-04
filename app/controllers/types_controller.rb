class TypesController < ApplicationController
  def index
    @types = Type.all
  end

  def show
    @type = Type.find(params[:id])
  end

  def new
    @type = Type.new
  end

  def create
    @type = Type.new(params[:type])
    if @type.save
      redirect_to @type, :notice => "Successfully created type."
    else
      render :action => 'new'
    end
  end

  def edit
    @type = Type.find(params[:id])
  end

  def update
    @type = Type.find(params[:id])
    if @type.update_attributes(params[:type])
      redirect_to @type, :notice  => "Successfully updated type."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @type = Type.find(params[:id])
    @type.destroy
    redirect_to types_url, :notice => "Successfully destroyed type."
  end
end
