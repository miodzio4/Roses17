class SearchesController < ApplicationController
  def index
    @searches = Search.all
  end

  def show
    @search = Search.find(params[:id])
  end

  def new
    @search = Search.new
  end

  def create
    @search = Search.new(params[:search])
    if @search.save
      redirect_to @search, :notice => "Successfully created search."
    else
      render :action => 'new'
    end
  end

  def edit
    @search = Search.find(params[:id])
  end

  def update
    @search = Search.find(params[:id])
    if @search.update_attributes(params[:search])
      redirect_to @search, :notice  => "Successfully updated search."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @search = Search.find(params[:id])
    @search.destroy
    redirect_to searches_url, :notice => "Successfully destroyed search."
  end
end
