class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.references :animal, null: false, foreign_key: true
      t.float :total_price
      t.boolean :order_status
      t.string :delivery_address

      t.timestamps
    end
  end
end
