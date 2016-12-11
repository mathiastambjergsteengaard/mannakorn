class AddProductsToProductsTable < ActiveRecord::Migration
  def up
    Product.create(name: "Salme 37,5", description: "A description needed", price: 85, html_class: "square", image_ref: "salme_37_5_road", product_type: 1)
    Product.create(name: "Salme 37,5", description: "A description needed", price: 85, html_class: "square", image_ref: "salme_37_5_feet", product_type: 1)
    Product.create(name: "Esajas 53,4-6", description: "A description needed", price: 115, html_class: "square", image_ref: "esajas_53_4_6_thorn", product_type: 2)
    Product.create(name: "Esajas 53,4-6", description: "A description needed", price: 115, html_class: "square", image_ref: "esajas_53_4_6_cross", product_type: 2)
    Product.create(name: "Fadervor", description: "A description needed", price: 85, html_class: "square", image_ref: "fadervor", product_type: 1)
    Product.create(name: "Salme 23", description: "A description needed", price: 115, html_class: "square", image_ref: "salme_23_image", product_type: 2)
    Product.create(name: "Salme 23", description: "A description needed", price: 115, html_class: "square", image_ref: "salme_23_white", product_type: 2)
    Product.create(name: "Johannes 15,4", description: "A description needed", price: 85, html_class: "square", image_ref: "johannes_15_4", product_type: 1)
  end

  def down
    Product.destroy_all
  end
end
