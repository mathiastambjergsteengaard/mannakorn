class AddCountOrdersProducts < ActiveRecord::Migration
  def change
    add_column :orders_products, :count, :integer, default: 0
  end
end
