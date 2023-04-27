class CreateFarmers < ActiveRecord::Migration[7.0]
  def change
    create_table :farmers do |t|
      t.string :farm
      t.integer :user_id

      t.timestamps
    end
  end
end
