class CreateLeases < ActiveRecord::Migration[7.0]
  def change
    create_table :leases do |t|
      t.references :user, null: false, foreign_key: true
      t.references :land, null: false, foreign_key: true
      t.boolean :lease_status

      t.timestamps
    end
  end
end
