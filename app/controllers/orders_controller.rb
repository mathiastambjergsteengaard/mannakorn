class OrdersController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    render 'show'
  end

  def new
    @order = Order.create
    order_product = OrdersProduct.create(order_id: @order.id, product_id: params["id"].to_i)
    order_product.count = 1
    order_product.save
    redirect_to order_path(@order)
  end

  def edit
    @order = Order.find(params[:id])
    order_product = OrdersProduct.find_or_create_by(order_id: @order.id, product_id: params[:product_id].to_i)
    order_product.count += 1
    order_product.save
    redirect_to order_path(@order)
  end

  def show
    @order = Order.find_by_id(params[:id])
  end

  def checkout
    @order = Order.find(params[:id])
    @user.new(params[:user])
    @user.save
    @order.user_id = @user.id
    dfsfds
    redirect_to root_path
  end

  def minus
    order_product = OrdersProduct.find_by(order_id: params['id'].to_i, product_id: params["product_id"].to_i)
    if order_product.count < 2
      order_product.destroy
      order = Order.find(params["id"].to_i)
      order_products = OrdersProduct.find_by(order_id: params['id'].to_i)
      if !order_products.present?
        order.destroy
      end
    else
      order_product.count = order_product.count - 1
      order_product.save
    end
    redirect_to order_path(id: params["id"].to_i)
  end

  def plus
    order_product = OrdersProduct.find_by(order_id: params['id'].to_i, product_id: params["product_id"].to_i)
    order_product.count = order_product.count + 1
    order_product.save
    redirect_to order_path(id: params["id"].to_i)
  end
end
