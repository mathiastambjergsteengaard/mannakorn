class Addcolumnshtmlclassandimageref < ActiveRecord::Migration
  def change
    add_column :products, :html_class, :string
    add_column :products, :image_ref, :string
  end
end
