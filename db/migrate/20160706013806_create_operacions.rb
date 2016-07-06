class CreateOperacions < ActiveRecord::Migration
  def change
    create_table :operacions do |t|
      t.string :worker

      t.timestamps null: false
    end
  end
end
