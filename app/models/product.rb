class Product < ActiveRecord::Base
  has_and_belongs_to_many :orders
  has_many :orders_products, foreign_key: :product_id

  WALL20x20 = 1
  WALL20x42 = 2


  def wall20x20?
    self.product_type == WALL20x20
  end

  def wall20x42?
    self.product_type == WALL20x42
  end

  def count_in_order(order_id)
    OrdersProduct.where(order_id: order_id, product_id: self.id).first.count
  end

  def price_kr
     self.price.to_s.sub('.',',') + " kr."
  end

  def total(order_id)
    "kr. " + (count_in_order(order_id) * self.price).to_s + ",-"
  end
end


