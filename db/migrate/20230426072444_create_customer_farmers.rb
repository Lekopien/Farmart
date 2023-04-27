class CreateCustomerFarmers < ActiveRecord::Migration[7.0]
  def change
    create_table :customer_farmers do |t|
      t.integer :customer_id
      t.integer :farmer_id

      t.timestamps
    end
  end
end
