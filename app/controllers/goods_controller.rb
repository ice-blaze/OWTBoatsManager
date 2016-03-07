class GoodsController < ApplicationController
  def create
    @boat = Boat.find(params[:boat_id])
    @good = @boat.goods.create(good_params)
    redirect_to boat_path(@boat)
  end

  def destroy
    @boat = Boat.find(params[:boat_id])
    @good = @boat.goods.find(params[:id])
    @good.destroy
    redirect_to boat_path(@boat)
  end

  private
  def good_params
    params.require(:good).permit(:name)
  end
end



