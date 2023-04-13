class CreateLands < ActiveRecord::Migration[7.0]
  def change
    create_table :lands do |t|
      t.references :farmer, null: false, foreign_key: true
      t.float :price
      t.string :location

      t.timestamps
    end
  end
end
