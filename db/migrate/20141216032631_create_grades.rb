class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.integer :total_points
      t.timestamps
    end
  end
end
