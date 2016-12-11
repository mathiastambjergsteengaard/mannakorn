class Order < ActiveRecord::Base
  has_and_belongs_to_many :products
  has_many :orders_products, foreign_key: :order_id
  has_many :product, through: :orders_products
  has_one :user, foreign_key: :user_id


  def item_count
    count = 0
    OrdersProduct.where(order_id: self.id).each{ |op| count += op.count}
    return count
  end

  def acc_price
    price = 0
    OrdersProduct.where(order_id: self.id).each { |op|
      price += op.count * op.product.price
    }
    return price
  end
end
