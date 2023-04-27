class CreateCustomerFarmers < ActiveRecord::Migration[7.0]
  def change
    create_table :customer_farmers do |t|
      t.references :customer, foreign_key: true
      t.references :farmer, foreign_key: true

      t.timestamps
    end
  end
end
