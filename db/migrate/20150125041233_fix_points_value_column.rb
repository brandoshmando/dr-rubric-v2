class FixPointsValueColumn < ActiveRecord::Migration
  def change
    remove_column :points, :value
    add_column :points, :value, :integer
  end
end
