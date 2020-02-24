class MasksController < ApplicationController
  before_action :authenticate_user!
  def index
    @masks = Mask.all
  end

  def show
    @mask = Mask.find(params[:id])
  end

  def new
    # @user = User.find(params[:user_id])
    # @mask = Mask.new
  end

  def create
    # @user = User.find(params[:user_id])
    # @mask = Mask.new(mask_params)
    # @mask.user = @user
    # if @mask.save
    #   redirect_to mask_path(@mask)
    # else
    #   render :new
    # end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  # private
  # def mask_params
  #   params.require(:mask).permit(:name, :description, :category, :price)
  # end
end
