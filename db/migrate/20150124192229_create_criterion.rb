class CreateCriterion < ActiveRecord::Migration
  def change
    create_table :criterion do |t|
      t.text :body
      t.integer :total_points
      t.timestamps
    end
  end
end
