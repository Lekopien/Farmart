class CreateAnimals < ActiveRecord::Migration[7.0]
  def change
    create_table :animals do |t|
      t.references :farmer, null: false, foreign_key: true
      t.string :animal_type
      t.string :breed
      t.integer :age
      t.float :price
      t.boolean :in_stock

      t.timestamps
    end
  end
end
