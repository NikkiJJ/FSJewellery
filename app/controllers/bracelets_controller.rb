class BraceletsController < ApplicationController
  def index
    @bracelets = JewelleryItem.where(item_type: 'Bracelet')
  end

  def show
    @bracelet = JewelleryItem.find(params[:id])
  end

  def new
  end

  def edit
  end

  def update
  end

  def destroy
    if current_user.admin? || current_user == @bracelet.user
      @bracelet.destroy
      redirect_to bracelets_path, notice: "Bracelet was successfully deleted."
    else
      redirect_to bracelets_path, alert: "You do not have permission to delete this bracelet."
    end
  end

  private

  def set_bracelet
    @bracelet = Bracelet.find(params[:id])
  end
end
