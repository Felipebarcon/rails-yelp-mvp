class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def new
    @restaurant = Restaurant.new
  end

  # def edit
  #   @restaurant = Restaurant.find(params[:id])
  # end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  # def update
  #   @restaurant = Restaurant.find(params[:id])
  #   @restaurant.update(restaurant_params)
  #   redirect_to restaurant_path(@restaurant)
  # end

  # def destroy
  #   @restaurant = Restaurant.find(params[:id])
  #   @restaurant.destroy
  #   redirect_to restaurants_path notice: 'Restaurant was successfully destroyed.'
  # end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end
end
