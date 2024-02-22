class BroochesController < ApplicationController
  def index
    @brooches = JewelleryItem.where(item_type: 'Brooch')
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
