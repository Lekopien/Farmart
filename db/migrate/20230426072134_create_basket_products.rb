class CreateBasketProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :basket_products do |t|
      t.integer :basket_id
      t.integer :product_id

      t.timestamps
    end
  end
end
