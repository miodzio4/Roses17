class MilddewImmSearchesController < ApplicationController
  before_action :set_milddew_imm_search, only: [:show, :edit, :update, :destroy]

  # GET /milddew_imm_searches
  # GET /milddew_imm_searches.json
  def index
    @milddew_imm_searches = MilddewImmSearch.all
  end

  # GET /milddew_imm_searches/1
  # GET /milddew_imm_searches/1.json
  def show
  end

  # GET /milddew_imm_searches/new
  def new
    @milddew_imm_search = MilddewImmSearch.new
  end

  # GET /milddew_imm_searches/1/edit
  def edit
  end

  # POST /milddew_imm_searches
  # POST /milddew_imm_searches.json
  def create
    @milddew_imm_search = MilddewImmSearch.new(milddew_imm_search_params)

    respond_to do |format|
      if @milddew_imm_search.save
        format.html { redirect_to @milddew_imm_search, notice: 'Milddew imm search was successfully created.' }
        format.json { render :show, status: :created, location: @milddew_imm_search }
      else
        format.html { render :new }
        format.json { render json: @milddew_imm_search.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /milddew_imm_searches/1
  # PATCH/PUT /milddew_imm_searches/1.json
  def update
    respond_to do |format|
      if @milddew_imm_search.update(milddew_imm_search_params)
        format.html { redirect_to @milddew_imm_search, notice: 'Milddew imm search was successfully updated.' }
        format.json { render :show, status: :ok, location: @milddew_imm_search }
      else
        format.html { render :edit }
        format.json { render json: @milddew_imm_search.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /milddew_imm_searches/1
  # DELETE /milddew_imm_searches/1.json
  def destroy
    @milddew_imm_search.destroy
    respond_to do |format|
      format.html { redirect_to milddew_imm_searches_url, notice: 'Milddew imm search was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_milddew_imm_search
      @milddew_imm_search = MilddewImmSearch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def milddew_imm_search_params
      params.require(:milddew_imm_search).permit(:search_id, :milddew_imm_id)
    end
end
