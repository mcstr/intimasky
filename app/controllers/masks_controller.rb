class MasksController < ApplicationController
  before_action :authenticate_user!
  def index
    @masks = Mask.all
  end

  def show
    @mask = Mask.find(params[:id])
  end

  def new
    @mask = Mask.new
  end

  def create
    @mask = Mask.new(mask_params)
    @mask.user = current_user
    if @mask.save
      redirect_to mask_path(@mask)
    else
      render :new
    end
  end

  def edit
    @mask = Mask.find(params[:id])
  end

  def update
    @mask = Mask.find(params[:id])
    @mask.update(mask_params)
    redirect_to mask_path(@mask)
  end

  def destroy
    @mask = Mask.find(params[:id])
    @mask.destroy
    redirect_to masks_path
  end

  private
  def mask_params
    params.require(:mask).permit(:name, :description, :category, :price, :photo)
  end
end
