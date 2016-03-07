class BoatsController < ApplicationController
  before_action :authenticate_user!

  def index
    @boats = Boat.all
  end

  def show
    @boat = Boat.find(params[:id])
  end

  def new
    @boat = Boat.new
  end

  def edit
    @boat = Boat.find(params[:id])
  end

  def destroy
    @boat = Boat.find(params[:id])
    @boat.destroy

    redirect_to boats_path
  end

  def create
    @boat = Boat.new(boat_params)

    if @boat.save
      redirect_to @boat
    else
      render 'new'
    end
  end

  def update
    @boat = Boat.find(params[:id])

    if @boat.update(boat_params)
      redirect_to @boat
    else
      render 'edit'
    end
  end

  private
  def boat_params
    params.require(:boat).permit(:name)
  end
end
