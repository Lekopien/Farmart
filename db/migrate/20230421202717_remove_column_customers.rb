class RemoveColumnCustomers < ActiveRecord::Migration[7.0]
  def change
    remove_column :customers, :first_name
    remove_column :customers, :last_name
    remove_column :customers, :phone 
    remove_column :customers, :adress 
  end
end
