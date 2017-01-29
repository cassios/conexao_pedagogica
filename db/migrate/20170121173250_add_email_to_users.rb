class AddEmailToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :email, :string
    change_column :users, :isAdmin, :boolean, :default => false
  end
end
