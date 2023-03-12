class ProductsController < ApplicationController
  def index
    @products = Product.all
    render template: "products/index"
  end

  def show
    product_id = params[:id]
    product = Product.find_by(id: product_id)
    render json: product.as_json
  end

  def create
    product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      inventory: params[:inventory],
      supplier_id: params[:supplier_id],
      color: params[:color],
    )
    if product.save
      # happy path
      render json: product.as_json
    else
      # sad path
      render json: { errors: product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    product_id = params[:id]
    product = Product.find_by(id: product_id)
    product.update(
      name: params[:name] || product.name,
      price: params[:price] || product.price,
      description: params[:description] || product.description,
      inventory: params[:inventory] || product.inventory,
      supplier_id: params[:supplier_id] || product.supplier_id,
      color: params[:color] || product.color,
    )
    if product.valid?
      # happy path
      render json: product.as_json
    else
      # sad path
      render json: { errors: product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: { message: "Product Desdtroyed" }
  end
end
