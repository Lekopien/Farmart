class AddImageToLands < ActiveRecord::Migration[7.0]
  def change
    add_column :lands, :image, :string
  end
end
