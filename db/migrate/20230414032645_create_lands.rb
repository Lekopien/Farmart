class CreateLands < ActiveRecord::Migration[7.0]
    def change
      create_table :lands do |t|
        t.integer :price
        t.string :location 
  
        t.timestamps
      end
    end
  end