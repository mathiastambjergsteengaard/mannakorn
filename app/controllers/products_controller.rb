class ProductsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    @products = Product.where(product_type: params[:product_type].to_i)
  end

  def show
    adsfads
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.save
    redirect_to "/users/8000/admin"
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update_attributes(product_params)
    redirect_to "/users/8000/admin"
  end

  def destroy
    Product.find(params[:id]).destroy
    redirect_to "/users/8000/admin"
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price, :html_class, :image_ref, :product_type)
  end
end
