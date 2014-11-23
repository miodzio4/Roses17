class TypeSearchesController < ApplicationController
  before_action :set_type_search, only: [:show, :edit, :update, :destroy]

  # GET /type_searches
  # GET /type_searches.json
  def index
    @type_searches = TypeSearch.all
  end

  # GET /type_searches/1
  # GET /type_searches/1.json
  def show
  end

  # GET /type_searches/new
  def new
    @type_search = TypeSearch.new
  end

  # GET /type_searches/1/edit
  def edit
  end

  # POST /type_searches
  # POST /type_searches.json
  def create
    @type_search = TypeSearch.new(type_search_params)

    respond_to do |format|
      if @type_search.save
        format.html { redirect_to @type_search, notice: 'Type search was successfully created.' }
        format.json { render :show, status: :created, location: @type_search }
      else
        format.html { render :new }
        format.json { render json: @type_search.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_searches/1
  # PATCH/PUT /type_searches/1.json
  def update
    respond_to do |format|
      if @type_search.update(type_search_params)
        format.html { redirect_to @type_search, notice: 'Type search was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_search }
      else
        format.html { render :edit }
        format.json { render json: @type_search.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_searches/1
  # DELETE /type_searches/1.json
  def destroy
    @type_search.destroy
    respond_to do |format|
      format.html { redirect_to type_searches_url, notice: 'Type search was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_search
      @type_search = TypeSearch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_search_params
      params.require(:type_search).permit(:search_id, :type_id)
    end
end
