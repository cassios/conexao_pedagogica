class AddDisciplineToPedagogyInnovations < ActiveRecord::Migration[5.0]
  def change
    add_reference :pedagogy_innovations, :discipline, foreign_key: true
  end
end
