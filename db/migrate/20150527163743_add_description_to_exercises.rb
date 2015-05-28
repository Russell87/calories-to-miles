class AddDescriptionToExercises < ActiveRecord::Migration
  def change
    add_column :exercises, :description, :text
    rename_column(:exercises, :name, :category)
  end
end
