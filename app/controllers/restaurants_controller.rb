class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
  def index
    @restaurants = Restaurant.all
    # render 'index.html.erb'
  end

  def show
    # render :show
  end

  def new
    @restaurant = Restaurant.new # only for the form
    # render :new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render 'new.html.erb'
    end
  end

  def edit
  end

  def update
    if @restaurant.update(restaurant_params)
      redirect_to restaurant_path(@restaurant)
    else
      # render 'edit.html.erb'
      render :edit
    end
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :rating, :address)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
