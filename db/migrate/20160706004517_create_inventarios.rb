class CreateInventarios < ActiveRecord::Migration
  def change
    create_table :inventarios do |t|
      t.integer :item null: false
      t.integer :size
      t.string :description

      t.timestamps null: false
    end
  end
end
