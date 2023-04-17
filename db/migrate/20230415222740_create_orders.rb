class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :animal_id
      t.float :total_price
      t.boolean :order_status
      t.string :delivery_address

      t.timestamps
    end
  end
end
