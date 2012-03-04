class FragrancesController < ApplicationController
  def index
    @fragrances = Fragrance.all
  end

  def show
    @fragrance = Fragrance.find(params[:id])
  end

  def new
    @fragrance = Fragrance.new
  end

  def create
    @fragrance = Fragrance.new(params[:fragrance])
    if @fragrance.save
      redirect_to @fragrance, :notice => "Successfully created fragrance."
    else
      render :action => 'new'
    end
  end

  def edit
    @fragrance = Fragrance.find(params[:id])
  end

  def update
    @fragrance = Fragrance.find(params[:id])
    if @fragrance.update_attributes(params[:fragrance])
      redirect_to @fragrance, :notice  => "Successfully updated fragrance."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @fragrance = Fragrance.find(params[:id])
    @fragrance.destroy
    redirect_to fragrances_url, :notice => "Successfully destroyed fragrance."
  end
end
