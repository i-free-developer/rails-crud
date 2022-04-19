class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
  
  def index
    @restaurants = Restaurant.all
    @date = Date.today
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(name: params[:restaurant][:name])

    if @restaurant.save
      redirect_to restaurant_path(@restaurant.id)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @restaurant.update(name: params[:restaurant][:name])
      redirect_to restaurant_path(@restaurant.id)
    else
      render :edit
    end
  end

  def destroy
    if @restaurant.destroy
      redirect_to restaurants_path
    else
      render :show
    end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end








