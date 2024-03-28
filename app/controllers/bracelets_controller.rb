class BraceletsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_bracelet, only: [:show, :edit, :update, :destroy]
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
    @bracelet = JewelleryItem.find(params[:id])
  end
end
