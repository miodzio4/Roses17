class FragrancesController < ApplicationController
  before_action :set_fragrance, only: [:show, :edit, :update, :destroy]

  # GET /fragrances
  # GET /fragrances.json
  def index
    @fragrances = Fragrance.all
  end

  # GET /fragrances/1
  # GET /fragrances/1.json
  def show
  end

  # GET /fragrances/new
  def new
    @fragrance = Fragrance.new
  end

  # GET /fragrances/1/edit
  def edit
  end

  # POST /fragrances
  # POST /fragrances.json
  def create
    @fragrance = Fragrance.new(fragrance_params)

    respond_to do |format|
      if @fragrance.save
        format.html { redirect_to @fragrance, notice: 'Fragrance was successfully created.' }
        format.json { render :show, status: :created, location: @fragrance }
      else
        format.html { render :new }
        format.json { render json: @fragrance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fragrances/1
  # PATCH/PUT /fragrances/1.json
  def update
    respond_to do |format|
      if @fragrance.update(fragrance_params)
        format.html { redirect_to @fragrance, notice: 'Fragrance was successfully updated.' }
        format.json { render :show, status: :ok, location: @fragrance }
      else
        format.html { render :edit }
        format.json { render json: @fragrance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fragrances/1
  # DELETE /fragrances/1.json
  def destroy
    @fragrance.destroy
    respond_to do |format|
      format.html { redirect_to fragrances_url, notice: 'Fragrance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fragrance
      @fragrance = Fragrance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fragrance_params
      params.require(:fragrance).permit(:name, :description)
    end
end
