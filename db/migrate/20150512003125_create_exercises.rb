class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.decimal :met, precision: 4, scale: 2

      t.timestamps null: false
    end
  end
end
