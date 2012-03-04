class FreezeImmsController < ApplicationController
  def index
    @freeze_imms = FreezeImm.all
  end

  def show
    @freeze_imm = FreezeImm.find(params[:id])
  end

  def new
    @freeze_imm = FreezeImm.new
  end

  def create
    @freeze_imm = FreezeImm.new(params[:freeze_imm])
    if @freeze_imm.save
      redirect_to @freeze_imm, :notice => "Successfully created freeze imm."
    else
      render :action => 'new'
    end
  end

  def edit
    @freeze_imm = FreezeImm.find(params[:id])
  end

  def update
    @freeze_imm = FreezeImm.find(params[:id])
    if @freeze_imm.update_attributes(params[:freeze_imm])
      redirect_to @freeze_imm, :notice  => "Successfully updated freeze imm."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @freeze_imm = FreezeImm.find(params[:id])
    @freeze_imm.destroy
    redirect_to freeze_imms_url, :notice => "Successfully destroyed freeze imm."
  end
end
