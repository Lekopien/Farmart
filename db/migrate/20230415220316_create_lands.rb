class CreateLands < ActiveRecord::Migration[7.0]
  def change
    create_table :lands do |t|
      t.integer :farmer_id
      t.float :price
      t.string :location
      t.boolean :availability

      t.timestamps
    end
  end
end
