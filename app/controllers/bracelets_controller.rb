class BraceletsController < ApplicationController
  def index
    @bracelets = JewelleryItem.where(item_type: 'Bracelet')
  end

  def show
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
