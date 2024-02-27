class JewelleryItemsController < ApplicationController
  def index
    @jewellery_items = JewelleryItem.all
  end

  def show
  end

  def new
  end

  def create
    @jewellery_item = current_user.jewellery_items.new(jewellery_item_params)
    if @jewellery_item.save
      redirect_to jewellery_item_path(@jewellery_item)
    else
      flash.now[:error] = @jewellery_item.errors.full_messages.join(", ")
      render :new
    end
  end


  def edit
  end

  def update
  end

  def destroy
  end

  private

  def jewellery_item_params
    params.require(:jewellery_item).permit(:name, :description, :price, :item_type)
  end
end
