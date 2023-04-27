class AddUserToFarmers < ActiveRecord::Migration[7.0]
  def change
    add_reference :farmers, :user, foreign_key: true
  end
end
