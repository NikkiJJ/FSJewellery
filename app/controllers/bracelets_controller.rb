class BraceletsController < ApplicationController
  def index
    @bracelets = JewelleryItem.where(item_type: 'Bracelet')
  end

  def show
    @bracelet = JewelleryItem.find(params[:id])
  end

  def new
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
