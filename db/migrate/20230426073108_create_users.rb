class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.boolean :isAdmin
      t.integer :customer_id
      t.integer :farmer_id
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :phone

      t.timestamps
    end
  end
end
