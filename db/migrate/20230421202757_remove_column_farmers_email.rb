class RemoveColumnFarmersEmail < ActiveRecord::Migration[7.0]
  def change
    remove_column :farmers, :email 

  end
end
