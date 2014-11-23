class FlowerColorsController < ApplicationController
  before_action :set_flower_color, only: [:show, :edit, :update, :destroy]

  # GET /flower_colors
  # GET /flower_colors.json
  def index
    @flower_colors = FlowerColor.all
  end

  # GET /flower_colors/1
  # GET /flower_colors/1.json
  def show
  end

  # GET /flower_colors/new
  def new
    @flower_color = FlowerColor.new
  end

  # GET /flower_colors/1/edit
  def edit
  end

  # POST /flower_colors
  # POST /flower_colors.json
  def create
    @flower_color = FlowerColor.new(flower_color_params)

    respond_to do |format|
      if @flower_color.save
        format.html { redirect_to @flower_color, notice: 'Flower color was successfully created.' }
        format.json { render :show, status: :created, location: @flower_color }
      else
        format.html { render :new }
        format.json { render json: @flower_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flower_colors/1
  # PATCH/PUT /flower_colors/1.json
  def update
    respond_to do |format|
      if @flower_color.update(flower_color_params)
        format.html { redirect_to @flower_color, notice: 'Flower color was successfully updated.' }
        format.json { render :show, status: :ok, location: @flower_color }
      else
        format.html { render :edit }
        format.json { render json: @flower_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flower_colors/1
  # DELETE /flower_colors/1.json
  def destroy
    @flower_color.destroy
    respond_to do |format|
      format.html { redirect_to flower_colors_url, notice: 'Flower color was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flower_color
      @flower_color = FlowerColor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flower_color_params
      params.require(:flower_color).permit(:name, :description)
    end
end
