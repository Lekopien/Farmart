class ChangeColumn < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :isAdmin, :boolean, :default => false
  end
end
