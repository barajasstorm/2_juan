class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :tittle
      t.text :content

      t.timestamps null: false
    end
  end
end
