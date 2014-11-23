class MilddewImmsController < ApplicationController
  before_action :set_milddew_imm, only: [:show, :edit, :update, :destroy]

  # GET /milddew_imms
  # GET /milddew_imms.json
  def index
    @milddew_imms = MilddewImm.all
  end

  # GET /milddew_imms/1
  # GET /milddew_imms/1.json
  def show
  end

  # GET /milddew_imms/new
  def new
    @milddew_imm = MilddewImm.new
  end

  # GET /milddew_imms/1/edit
  def edit
  end

  # POST /milddew_imms
  # POST /milddew_imms.json
  def create
    @milddew_imm = MilddewImm.new(milddew_imm_params)

    respond_to do |format|
      if @milddew_imm.save
        format.html { redirect_to @milddew_imm, notice: 'Milddew imm was successfully created.' }
        format.json { render :show, status: :created, location: @milddew_imm }
      else
        format.html { render :new }
        format.json { render json: @milddew_imm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /milddew_imms/1
  # PATCH/PUT /milddew_imms/1.json
  def update
    respond_to do |format|
      if @milddew_imm.update(milddew_imm_params)
        format.html { redirect_to @milddew_imm, notice: 'Milddew imm was successfully updated.' }
        format.json { render :show, status: :ok, location: @milddew_imm }
      else
        format.html { render :edit }
        format.json { render json: @milddew_imm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /milddew_imms/1
  # DELETE /milddew_imms/1.json
  def destroy
    @milddew_imm.destroy
    respond_to do |format|
      format.html { redirect_to milddew_imms_url, notice: 'Milddew imm was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_milddew_imm
      @milddew_imm = MilddewImm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def milddew_imm_params
      params.require(:milddew_imm).permit(:name, :description)
    end
end
