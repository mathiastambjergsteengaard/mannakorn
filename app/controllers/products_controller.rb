class ProductsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def index
    @products = Product.where(product_type: params[:product_type].to_i)
  end

  def show
    adsfads
    @product = Product.find(params[:id])
  end

  def destroy
    order_id = params[:order_id].to_i
    OrdersProduct.where(order_id: order_id, product_id: params[:id]).delete_all
    redirect_to order_path(order_id)
  end
end
