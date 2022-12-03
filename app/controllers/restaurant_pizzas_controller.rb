class RestaurantPizzasController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def create
    res =
      RestaurantPizza.create(
        price: params[:price],
        pizza_id: params[:pizza_id],
        restaurant_id: params[:restaurant_id]
      )

    render json: res, status: :created
  end

  private

  def render_not_found_response
    render json: { error: "Author not found" }, status: :not_found
  end
end
