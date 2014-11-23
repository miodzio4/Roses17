class RosesController < ApplicationController
  before_action :set_rose, only: [:show, :edit, :update, :destroy]

  # GET /roses
  # GET /roses.json
  def index
    @roses = Rose.all
  end

  # GET /roses/1
  # GET /roses/1.json
  def show
  end

  # GET /roses/new
  def new
    @rose = Rose.new
  end

  # GET /roses/1/edit
  def edit
  end

  # POST /roses
  # POST /roses.json
  def create
    @rose = Rose.new(rose_params)

    respond_to do |format|
      if @rose.save
        format.html { redirect_to @rose, notice: 'Rose was successfully created.' }
        format.json { render :show, status: :created, location: @rose }
      else
        format.html { render :new }
        format.json { render json: @rose.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /roses/1
  # PATCH/PUT /roses/1.json
  def update
    respond_to do |format|
      if @rose.update(rose_params)
        format.html { redirect_to @rose, notice: 'Rose was successfully updated.' }
        format.json { render :show, status: :ok, location: @rose }
      else
        format.html { render :edit }
        format.json { render json: @rose.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roses/1
  # DELETE /roses/1.json
  def destroy
    @rose.destroy
    respond_to do |format|
      format.html { redirect_to roses_url, notice: 'Rose was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rose
      @rose = Rose.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rose_params
      params.require(:rose).permit(:name, :description, :flower_color_id, :flower_color_desc, :synonims, :milddew_imm_id, :leaves_color, :leaf_spot_imm_id, :fragrance_id, :height_id, :height_text, :freeze_imm_id, :type_id, :year, :origin, :ADR, :flower_shape, :cultivation, :remarks)
    end
end
