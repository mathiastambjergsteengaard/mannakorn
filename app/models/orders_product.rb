class OrdersProduct < ActiveRecord::Base
  belongs_to :order, foreign_key: :order_id
  belongs_to :product, foreign_key: :product_id
end
