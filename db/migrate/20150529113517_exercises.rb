class Exercises < ActiveRecord::Migration
  def change
    change_column :exercises, :met, :decimal, precision: 5, scale: 2
  end
end
