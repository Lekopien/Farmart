class CreateBasketCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :basket_customers do |t|
      t.references :basket, foreign_key: true
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
