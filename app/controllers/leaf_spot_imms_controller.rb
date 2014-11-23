class LeafSpotImmsController < ApplicationController
  before_action :set_leaf_spot_imm, only: [:show, :edit, :update, :destroy]

  # GET /leaf_spot_imms
  # GET /leaf_spot_imms.json
  def index
    @leaf_spot_imms = LeafSpotImm.all
  end

  # GET /leaf_spot_imms/1
  # GET /leaf_spot_imms/1.json
  def show
  end

  # GET /leaf_spot_imms/new
  def new
    @leaf_spot_imm = LeafSpotImm.new
  end

  # GET /leaf_spot_imms/1/edit
  def edit
  end

  # POST /leaf_spot_imms
  # POST /leaf_spot_imms.json
  def create
    @leaf_spot_imm = LeafSpotImm.new(leaf_spot_imm_params)

    respond_to do |format|
      if @leaf_spot_imm.save
        format.html { redirect_to @leaf_spot_imm, notice: 'Leaf spot imm was successfully created.' }
        format.json { render :show, status: :created, location: @leaf_spot_imm }
      else
        format.html { render :new }
        format.json { render json: @leaf_spot_imm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leaf_spot_imms/1
  # PATCH/PUT /leaf_spot_imms/1.json
  def update
    respond_to do |format|
      if @leaf_spot_imm.update(leaf_spot_imm_params)
        format.html { redirect_to @leaf_spot_imm, notice: 'Leaf spot imm was successfully updated.' }
        format.json { render :show, status: :ok, location: @leaf_spot_imm }
      else
        format.html { render :edit }
        format.json { render json: @leaf_spot_imm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leaf_spot_imms/1
  # DELETE /leaf_spot_imms/1.json
  def destroy
    @leaf_spot_imm.destroy
    respond_to do |format|
      format.html { redirect_to leaf_spot_imms_url, notice: 'Leaf spot imm was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leaf_spot_imm
      @leaf_spot_imm = LeafSpotImm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def leaf_spot_imm_params
      params.require(:leaf_spot_imm).permit(:name, :description)
    end
end
