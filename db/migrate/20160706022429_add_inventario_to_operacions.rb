class AddInventarioToOperacions < ActiveRecord::Migration
  def change
    add_reference :operacions, :inventario, index: true, foreign_key: true
  end
end
