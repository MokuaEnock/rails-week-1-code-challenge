class RestaurantPizzasController < ApplicationController
  # rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def create
    res = RestaurantPizza.create!(res_params)
    render json: res, status: :created
  end

  def index
    res = RestaurantPizza.all
    render json: res, status: :ok
  end

  private

  def render_not_found_response
    render json: { error: "Author not found" }, status: :not_found
  end
end
