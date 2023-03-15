class OrdersController < ApplicationController
  def create
    order = Orders.new(
      user_id: params[:user_id],
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: params[:subtotal],
      tax: params[:tax],
      total: params[:total],
    )
    if order.save
      # happy path
      render json: order.as_json
    else
      # sad path
      render json: { errors: order.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    order_id = params[:id]
    order = Order.find_by(id: order_id)
    render json: order.as_json
  end
end
