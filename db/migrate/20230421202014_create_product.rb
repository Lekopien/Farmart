class CreateProduct < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string "name"
      t.float "price"
      t.string "quantity"
      t.string "url_img"
      t.integer "farmer_id"

      t.index ["farmer_id"], name: "index_products_on_farmer_id"

      t.timestamps
    end
  end
end
