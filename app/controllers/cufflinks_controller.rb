class CufflinksController < ApplicationController
  def index
    @cufflink = JewelleryItem.where(item_type: 'Cufflinks')
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
