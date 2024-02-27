class JewelleryItemsController < ApplicationController
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

  def destroy
  end

  private

  def jewellery_item_params
    params.require(:jewellery_item).permit(:name, :description, :price, :item_type)
  end

  def show_path_for_item_type(item_type, jewellery_item)
    case item_type
    when "Necklace"
      necklace_path(jewellery_item)
    when "Earrings"
      earrings_path(jewellery_item)
    when "Bracelet"
      bracelet_path(jewellery_item)
    when "Brooch"
      brooch_path(jewellery_item)
    when "Cufflinks"
      cufflinks_path(jewellery_item)
    when "Ring"
      ring_path(jewellery_item)
    else
      jewellery_item_path(jewellery_item)
    end
  end
end
