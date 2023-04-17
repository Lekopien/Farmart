class CreateLeases < ActiveRecord::Migration[7.0]
  def change
    create_table :leases do |t|
      t.integer :user_id
      t.integer :land_id
      t.boolean :lease_status

      t.timestamps
    end
  end
end
