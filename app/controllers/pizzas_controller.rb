class PizzasController < ApplicationController
  def index
    pizzas = Pizza.all
    render json: pizzas
  end

  def show
    pizza = Pizza.find(params[:id])
    render json: pizza
  end
end
