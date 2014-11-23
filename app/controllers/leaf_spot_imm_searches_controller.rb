class LeafSpotImmSearchesController < ApplicationController
  before_action :set_leaf_spot_imm_search, only: [:show, :edit, :update, :destroy]

  # GET /leaf_spot_imm_searches
  # GET /leaf_spot_imm_searches.json
  def index
    @leaf_spot_imm_searches = LeafSpotImmSearch.all
  end

  # GET /leaf_spot_imm_searches/1
  # GET /leaf_spot_imm_searches/1.json
  def show
  end

  # GET /leaf_spot_imm_searches/new
  def new
    @leaf_spot_imm_search = LeafSpotImmSearch.new
  end

  # GET /leaf_spot_imm_searches/1/edit
  def edit
  end

  # POST /leaf_spot_imm_searches
  # POST /leaf_spot_imm_searches.json
  def create
    @leaf_spot_imm_search = LeafSpotImmSearch.new(leaf_spot_imm_search_params)

    respond_to do |format|
      if @leaf_spot_imm_search.save
        format.html { redirect_to @leaf_spot_imm_search, notice: 'Leaf spot imm search was successfully created.' }
        format.json { render :show, status: :created, location: @leaf_spot_imm_search }
      else
        format.html { render :new }
        format.json { render json: @leaf_spot_imm_search.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leaf_spot_imm_searches/1
  # PATCH/PUT /leaf_spot_imm_searches/1.json
  def update
    respond_to do |format|
      if @leaf_spot_imm_search.update(leaf_spot_imm_search_params)
        format.html { redirect_to @leaf_spot_imm_search, notice: 'Leaf spot imm search was successfully updated.' }
        format.json { render :show, status: :ok, location: @leaf_spot_imm_search }
      else
        format.html { render :edit }
        format.json { render json: @leaf_spot_imm_search.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leaf_spot_imm_searches/1
  # DELETE /leaf_spot_imm_searches/1.json
  def destroy
    @leaf_spot_imm_search.destroy
    respond_to do |format|
      format.html { redirect_to leaf_spot_imm_searches_url, notice: 'Leaf spot imm search was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leaf_spot_imm_search
      @leaf_spot_imm_search = LeafSpotImmSearch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def leaf_spot_imm_search_params
      params.require(:leaf_spot_imm_search).permit(:search_id, :leaf_spot_imm_id)
    end
end
