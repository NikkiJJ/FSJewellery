class RingsController < ApplicationController
  def index
    @rings = JewelleryItem.where(item_type: 'Ring')
  end

  def show
    @ring = JewelleryItem.find(params[:id])
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
