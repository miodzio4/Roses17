class FreezeImmSearchesController < ApplicationController
  before_action :set_freeze_imm_search, only: [:show, :edit, :update, :destroy]

  # GET /freeze_imm_searches
  # GET /freeze_imm_searches.json
  def index
    @freeze_imm_searches = FreezeImmSearch.all
  end

  # GET /freeze_imm_searches/1
  # GET /freeze_imm_searches/1.json
  def show
  end

  # GET /freeze_imm_searches/new
  def new
    @freeze_imm_search = FreezeImmSearch.new
  end

  # GET /freeze_imm_searches/1/edit
  def edit
  end

  # POST /freeze_imm_searches
  # POST /freeze_imm_searches.json
  def create
    @freeze_imm_search = FreezeImmSearch.new(freeze_imm_search_params)

    respond_to do |format|
      if @freeze_imm_search.save
        format.html { redirect_to @freeze_imm_search, notice: 'Freeze imm search was successfully created.' }
        format.json { render :show, status: :created, location: @freeze_imm_search }
      else
        format.html { render :new }
        format.json { render json: @freeze_imm_search.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /freeze_imm_searches/1
  # PATCH/PUT /freeze_imm_searches/1.json
  def update
    respond_to do |format|
      if @freeze_imm_search.update(freeze_imm_search_params)
        format.html { redirect_to @freeze_imm_search, notice: 'Freeze imm search was successfully updated.' }
        format.json { render :show, status: :ok, location: @freeze_imm_search }
      else
        format.html { render :edit }
        format.json { render json: @freeze_imm_search.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /freeze_imm_searches/1
  # DELETE /freeze_imm_searches/1.json
  def destroy
    @freeze_imm_search.destroy
    respond_to do |format|
      format.html { redirect_to freeze_imm_searches_url, notice: 'Freeze imm search was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_freeze_imm_search
      @freeze_imm_search = FreezeImmSearch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def freeze_imm_search_params
      params.require(:freeze_imm_search).permit(:search_id, :freeze_imm_id)
    end
end
