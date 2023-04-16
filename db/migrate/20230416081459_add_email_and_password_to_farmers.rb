class AddEmailAndPasswordToFarmers < ActiveRecord::Migration[7.0]
  def change
    add_column :farmers, :email, :string
    add_column :farmers, :password_digest, :string
  end
end
