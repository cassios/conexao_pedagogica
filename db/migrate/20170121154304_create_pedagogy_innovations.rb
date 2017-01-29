class CreatePedagogyInnovations < ActiveRecord::Migration[5.0]
  def change
    create_table :pedagogy_innovations do |t|
      t.string :title
      t.text :description
      t.text :achievements
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
