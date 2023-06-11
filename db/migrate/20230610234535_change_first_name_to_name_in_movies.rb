class ChangeFirstNameToNameInMovies < ActiveRecord::Migration[7.0]
  def change
    rename_column :movies, :first_name, :name
  end
end
