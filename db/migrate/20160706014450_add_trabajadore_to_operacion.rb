class AddTrabajadoreToOperacion < ActiveRecord::Migration
  def change
    add_reference :operacions, :trabajadore, index: true, foreign_key: true
  end
end
