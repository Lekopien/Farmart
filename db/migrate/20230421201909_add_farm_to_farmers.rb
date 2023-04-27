class AddFarmToFarmers < ActiveRecord::Migration[7.0]
  def change
    add_column :farmers, :farm, :string
  end
end
