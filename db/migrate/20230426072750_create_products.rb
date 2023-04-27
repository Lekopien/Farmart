class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.string :quantity
      t.string :image
      t.integer :farmer_id
      t.integer :category_id

      t.timestamps
    end
  end
end
