class AddLatitudeAndLongitudeToPedagogyInnovations < ActiveRecord::Migration[5.0]
  def change
    add_column :pedagogy_innovations, :latitude, :float
    add_column :pedagogy_innovations, :longitude, :float
  end
end
