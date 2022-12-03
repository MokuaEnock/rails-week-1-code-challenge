class RestaurantsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def index
    restaurants = Restaurant.all
    render json: restaurants
  end

  def show
    restaurant = Restaurant.find(params[:id])
    render json: restaurant
  end

  private

  def render_not_found_response
    render json: { error: "Author not found" }, status: :not_found
  end
end
