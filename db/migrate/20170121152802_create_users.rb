class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.boolean :isAdmin

      t.timestamps
    end
  end
end
