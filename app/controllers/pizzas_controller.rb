class PizzasController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def index
    pizzas = Pizza.all
    render json: pizzas
  end

  def show
    pizza = Pizza.find(params[:id])
    render json: pizza
  end

  def create
  end

  private

  def pizza_params
    params.permit(:name, :ingredients)
  end

  def render_not_found_response
    render json: { error: "Pizza not found" }, status: :not_found
  end
end
