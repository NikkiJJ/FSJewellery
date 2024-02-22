class EarringsController < ApplicationController
  def index
    @earrings = JewelleryItem.where(item_type: 'Earrings')
  end

  def show
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
