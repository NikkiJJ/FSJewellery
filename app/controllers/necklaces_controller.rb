class NecklacesController < ApplicationController
  def index
    @necklaces = JewelleryItem.where(item_type: 'Necklace')
  end

  def show
    @necklace = JewelleryItem.find(params[:id])
  end
end
