class CreateBasketProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :basket_products do |t|
      t.references :basket, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
