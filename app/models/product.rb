class Product < ActiveRecord::Base
  has_and_belongs_to_many :orders
  has_many :orders_products, foreign_key: :product_id

  WALL15x15 = 1
  WALL20x20 = 2
  WALL20x42 = 3
  OTHER = 4

  def self.collection
    [
        [product_type_name(WALL15x15), WALL15x15],
        [product_type_name(WALL20x20), WALL20x20],
        [product_type_name(WALL20x42), WALL20x42],
        [product_type_name(OTHER), OTHER]
    ]
  end

  def self.product_type_name(type_id)
    case type_id
      when WALL15x15
        "Vers på væggen 15x15"
      when WALL20x20
        "Vers på væggen 20x20"
      when WALL20x42
        "Vers på væggen 20x42"
      when OTHER
        "Andet"
    end
  end

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


