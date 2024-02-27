class BroochesController < ApplicationController
  def index
    @brooches = JewelleryItem.where(item_type: 'Brooch')
  end

  def show
    @brooch = JewelleryItem.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash[:alert] = "Brooch not found"
    redirect_to brooches_path
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
