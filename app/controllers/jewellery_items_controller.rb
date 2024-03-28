class JewelleryItemsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_jewellery_item, only: [:show, :edit, :update, :destroy]

  def index
    @jewellery_items = JewelleryItem.all
  end

  def show
  end

  def new
    @jewellery_item = JewelleryItem.new
  end

  def create
    @jewellery_item = current_user.jewellery_items.new(jewellery_item_params)

  if @jewellery_item.save
    redirect_to send("#{jewellery_item_params[:item_type].downcase}_path", @jewellery_item), notice: 'Jewellery item was successfully created.'
  else
    render :new
  end
  end

  def edit
  end

  def update
  end

  #  def destroy
  #    if current_user.admin? || current_user == @jewellery_item.user
  #      @jewellery_item.destroy
  #      redirect_to bracelets_path, notice: "Bracelet was successfully deleted."
  #    else
  #      redirect_to bracelets_path, alert: "You do not have permission to delete this bracelet."
  #    end
  #  end

  private

  def jewellery_item_params
    params.require(:jewellery_item).permit(:name, :description, :price, :item_type)
  end

  def set_jewellery_item
    @jewellery_item = JewelleryItem.find(params[:id])
  end
end
