class MilddewImmsController < ApplicationController
  def index
    @milddew_imms = MilddewImm.all
  end

  def show
    @milddew_imm = MilddewImm.find(params[:id])
  end

  def new
    @milddew_imm = MilddewImm.new
  end

  def create
    @milddew_imm = MilddewImm.new(params[:milddew_imm])
    if @milddew_imm.save
      redirect_to @milddew_imm, :notice => "Successfully created milddew imm."
    else
      render :action => 'new'
    end
  end

  def edit
    @milddew_imm = MilddewImm.find(params[:id])
  end

  def update
    @milddew_imm = MilddewImm.find(params[:id])
    if @milddew_imm.update_attributes(params[:milddew_imm])
      redirect_to @milddew_imm, :notice  => "Successfully updated milddew imm."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @milddew_imm = MilddewImm.find(params[:id])
    @milddew_imm.destroy
    redirect_to milddew_imms_url, :notice => "Successfully destroyed milddew imm."
  end
end
