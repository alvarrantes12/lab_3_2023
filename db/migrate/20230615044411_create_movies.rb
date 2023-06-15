class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :director_id
      t.date :release_date
      t.string :genre

      t.timestamps
    end
  end
end
