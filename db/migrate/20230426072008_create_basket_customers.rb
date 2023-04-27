class CreateBasketCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :basket_customers do |t|
      t.integer :basket_id
      t.integer :customer_id

      t.timestamps
    end
  end
end
