class LeafSpotImmsController < ApplicationController
  def index
    @leaf_spot_imms = LeafSpotImm.all
  end

  def show
    @leaf_spot_imm = LeafSpotImm.find(params[:id])
  end

  def new
    @leaf_spot_imm = LeafSpotImm.new
  end

  def create
    @leaf_spot_imm = LeafSpotImm.new(params[:leaf_spot_imm])
    if @leaf_spot_imm.save
      redirect_to @leaf_spot_imm, :notice => "Successfully created leaf spot imm."
    else
      render :action => 'new'
    end
  end

  def edit
    @leaf_spot_imm = LeafSpotImm.find(params[:id])
  end

  def update
    @leaf_spot_imm = LeafSpotImm.find(params[:id])
    if @leaf_spot_imm.update_attributes(params[:leaf_spot_imm])
      redirect_to @leaf_spot_imm, :notice  => "Successfully updated leaf spot imm."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @leaf_spot_imm = LeafSpotImm.find(params[:id])
    @leaf_spot_imm.destroy
    redirect_to leaf_spot_imms_url, :notice => "Successfully destroyed leaf spot imm."
  end
end
