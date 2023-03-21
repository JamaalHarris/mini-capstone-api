class CartedProductsController < ApplicationController
  before_action :authenticate_user

  def index
    @carted_products = current_user.carted_products.where(status: "carted")
    render json: @carted_products.as_json
  end

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

  def destroy
    carted_product = CartedProduct.find_by(id: params[:id])
    carted_product.update(status: "removed")
    render json: {message: "Item has been removed from your cart!"}
  end

end
end
