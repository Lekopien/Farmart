class AddColumnToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :role, :int, :default => true
  end
end
