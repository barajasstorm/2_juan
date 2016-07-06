class ChangeColumnNull < ActiveRecord::Migration
  def change
  	change_column_null(:inventarios, :item, false, unique: true)
  end
end
