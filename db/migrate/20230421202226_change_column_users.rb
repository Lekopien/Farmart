class ChangeColumnUsers < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :role, :int, :default => 0
  end
end
