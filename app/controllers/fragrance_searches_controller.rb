class FragranceSearchesController < ApplicationController
  before_action :set_fragrance_search, only: [:show, :edit, :update, :destroy]

  # GET /fragrance_searches
  # GET /fragrance_searches.json
  def index
    @fragrance_searches = FragranceSearch.all
  end

  # GET /fragrance_searches/1
  # GET /fragrance_searches/1.json
  def show
  end

  # GET /fragrance_searches/new
  def new
    @fragrance_search = FragranceSearch.new
  end

  # GET /fragrance_searches/1/edit
  def edit
  end

  # POST /fragrance_searches
  # POST /fragrance_searches.json
  def create
    @fragrance_search = FragranceSearch.new(fragrance_search_params)

    respond_to do |format|
      if @fragrance_search.save
        format.html { redirect_to @fragrance_search, notice: 'Fragrance search was successfully created.' }
        format.json { render :show, status: :created, location: @fragrance_search }
      else
        format.html { render :new }
        format.json { render json: @fragrance_search.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fragrance_searches/1
  # PATCH/PUT /fragrance_searches/1.json
  def update
    respond_to do |format|
      if @fragrance_search.update(fragrance_search_params)
        format.html { redirect_to @fragrance_search, notice: 'Fragrance search was successfully updated.' }
        format.json { render :show, status: :ok, location: @fragrance_search }
      else
        format.html { render :edit }
        format.json { render json: @fragrance_search.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fragrance_searches/1
  # DELETE /fragrance_searches/1.json
  def destroy
    @fragrance_search.destroy
    respond_to do |format|
      format.html { redirect_to fragrance_searches_url, notice: 'Fragrance search was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fragrance_search
      @fragrance_search = FragranceSearch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fragrance_search_params
      params.require(:fragrance_search).permit(:search_id, :fragrance_id)
    end
end
