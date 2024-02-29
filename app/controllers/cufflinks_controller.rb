class CufflinksController < ApplicationController
  def index
    @cufflinks = JewelleryItem.where(item_type: 'Cufflinks')
  end

  def show
    @cufflink = JewelleryItem.find(params[:id])
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
