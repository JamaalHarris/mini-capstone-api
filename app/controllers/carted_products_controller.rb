class CartedProductsController < ApplicationController
  before_action :authenticate_user

  def create
    @carted_product = CartedProduct.create(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted",
      order_id: nil,
    )
    if @carted_product.save
      # happy path
      render json: { message: "successfully added" }, status: :created
    else
      # sad path
      render json: { errors: @carted_product.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
