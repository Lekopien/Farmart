class CreateFarmers < ActiveRecord::Migration[7.0]
  def change
    create_table :farmers do |t|
      t.references :user, null: false, foreign_key: true
      t.string :farmer_name
      t.string :farmer_location
      t.integer :contact_info

      t.timestamps
    end
  end
end
