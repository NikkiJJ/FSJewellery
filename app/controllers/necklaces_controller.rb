class NecklacesController < ApplicationController
  def index
    @necklaces = JewelleryItem.where(item_type: 'Necklace')
  end
end
