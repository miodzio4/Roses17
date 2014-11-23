class HeightSearchesController < ApplicationController
  before_action :set_height_search, only: [:show, :edit, :update, :destroy]

  # GET /height_searches
  # GET /height_searches.json
  def index
    @height_searches = HeightSearch.all
  end

  # GET /height_searches/1
  # GET /height_searches/1.json
  def show
  end

  # GET /height_searches/new
  def new
    @height_search = HeightSearch.new
  end

  # GET /height_searches/1/edit
  def edit
  end

  # POST /height_searches
  # POST /height_searches.json
  def create
    @height_search = HeightSearch.new(height_search_params)

    respond_to do |format|
      if @height_search.save
        format.html { redirect_to @height_search, notice: 'Height search was successfully created.' }
        format.json { render :show, status: :created, location: @height_search }
      else
        format.html { render :new }
        format.json { render json: @height_search.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /height_searches/1
  # PATCH/PUT /height_searches/1.json
  def update
    respond_to do |format|
      if @height_search.update(height_search_params)
        format.html { redirect_to @height_search, notice: 'Height search was successfully updated.' }
        format.json { render :show, status: :ok, location: @height_search }
      else
        format.html { render :edit }
        format.json { render json: @height_search.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /height_searches/1
  # DELETE /height_searches/1.json
  def destroy
    @height_search.destroy
    respond_to do |format|
      format.html { redirect_to height_searches_url, notice: 'Height search was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_height_search
      @height_search = HeightSearch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def height_search_params
      params.require(:height_search).permit(:search_id, :height_id)
    end
end
