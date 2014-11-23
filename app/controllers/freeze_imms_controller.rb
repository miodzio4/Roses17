class FreezeImmsController < ApplicationController
  before_action :set_freeze_imm, only: [:show, :edit, :update, :destroy]

  # GET /freeze_imms
  # GET /freeze_imms.json
  def index
    @freeze_imms = FreezeImm.all
  end

  # GET /freeze_imms/1
  # GET /freeze_imms/1.json
  def show
  end

  # GET /freeze_imms/new
  def new
    @freeze_imm = FreezeImm.new
  end

  # GET /freeze_imms/1/edit
  def edit
  end

  # POST /freeze_imms
  # POST /freeze_imms.json
  def create
    @freeze_imm = FreezeImm.new(freeze_imm_params)

    respond_to do |format|
      if @freeze_imm.save
        format.html { redirect_to @freeze_imm, notice: 'Freeze imm was successfully created.' }
        format.json { render :show, status: :created, location: @freeze_imm }
      else
        format.html { render :new }
        format.json { render json: @freeze_imm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /freeze_imms/1
  # PATCH/PUT /freeze_imms/1.json
  def update
    respond_to do |format|
      if @freeze_imm.update(freeze_imm_params)
        format.html { redirect_to @freeze_imm, notice: 'Freeze imm was successfully updated.' }
        format.json { render :show, status: :ok, location: @freeze_imm }
      else
        format.html { render :edit }
        format.json { render json: @freeze_imm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /freeze_imms/1
  # DELETE /freeze_imms/1.json
  def destroy
    @freeze_imm.destroy
    respond_to do |format|
      format.html { redirect_to freeze_imms_url, notice: 'Freeze imm was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_freeze_imm
      @freeze_imm = FreezeImm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def freeze_imm_params
      params.require(:freeze_imm).permit(:name, :description)
    end
end
