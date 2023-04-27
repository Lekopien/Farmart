class RemoveColumnFarmers < ActiveRecord::Migration[7.0]
  def change
    remove_column :farmers, :first_name
    remove_column :farmers, :last_name
    remove_column :farmers, :phone 

  end
end
