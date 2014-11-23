class FlowerColorSearchesController < ApplicationController
  before_action :set_flower_color_search, only: [:show, :edit, :update, :destroy]

  # GET /flower_color_searches
  # GET /flower_color_searches.json
  def index
    @flower_color_searches = FlowerColorSearch.all
  end

  # GET /flower_color_searches/1
  # GET /flower_color_searches/1.json
  def show
  end

  # GET /flower_color_searches/new
  def new
    @flower_color_search = FlowerColorSearch.new
  end

  # GET /flower_color_searches/1/edit
  def edit
  end

  # POST /flower_color_searches
  # POST /flower_color_searches.json
  def create
    @flower_color_search = FlowerColorSearch.new(flower_color_search_params)

    respond_to do |format|
      if @flower_color_search.save
        format.html { redirect_to @flower_color_search, notice: 'Flower color search was successfully created.' }
        format.json { render :show, status: :created, location: @flower_color_search }
      else
        format.html { render :new }
        format.json { render json: @flower_color_search.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flower_color_searches/1
  # PATCH/PUT /flower_color_searches/1.json
  def update
    respond_to do |format|
      if @flower_color_search.update(flower_color_search_params)
        format.html { redirect_to @flower_color_search, notice: 'Flower color search was successfully updated.' }
        format.json { render :show, status: :ok, location: @flower_color_search }
      else
        format.html { render :edit }
        format.json { render json: @flower_color_search.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flower_color_searches/1
  # DELETE /flower_color_searches/1.json
  def destroy
    @flower_color_search.destroy
    respond_to do |format|
      format.html { redirect_to flower_color_searches_url, notice: 'Flower color search was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flower_color_search
      @flower_color_search = FlowerColorSearch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flower_color_search_params
      params.require(:flower_color_search).permit(:search_id, :flower_color_id)
    end
end
