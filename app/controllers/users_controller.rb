class UsersController < ApplicationController

  def admin
    @products = Product.all
  end

  def show

  end

  def new
    @order = Order.find(params['order_id'])
  end

  def create
    @order = Order.find(params[:user][:order_id])
    @user = User.new(params.require(:user).permit(:name, :address, :email, :city, :zip_code))
    if @user.save
      @order.user_id = @user.id
      UserMailer.order_confirmation(@user, @order).deliver_later
      AdminMailer.new_order(@user, @order).deliver_later
      render 'orders/confirmation'
    else
      render "new"
    end
  end
end
