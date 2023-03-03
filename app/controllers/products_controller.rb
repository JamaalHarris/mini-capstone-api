class ProductsController < ApplicationController
  def index
    product = Product.all
    render json: product.as_json
  end

  # def product_1
  # end

  # def product_2
  # end
  def show
    product_id = params[:id]
    product = Product.find_by(id: product_id)
    render json: product.as_json
  end

  def create
    product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description],
    )
    product.save
    render json: product.as_json
  end

  def update
    product_id = params[:id]
    product = Product.find_by(id: product_id)
    product.update(name: params[:name] || product.name, price: params[:price] || product.price, image_url: params[:image_url] || productimage_url,
                   description: params[:description] || product.description)
    render json: product.as_json
  end

  def destroy
    product = Product.find_by(id: product_id)
    recipe.destroy
    render json: { message: "Product Desdtroyed" }
  end
end
