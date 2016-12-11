class AddRefToOrdersFromProduct < ActiveRecord::Migration
  def self.up
    create_table :orders_products do |t|
      t.belongs_to :product, index: true
      t.belongs_to :order, index: true
    end
  end

  def self.down
    drop_table :orders_products
  end
end
