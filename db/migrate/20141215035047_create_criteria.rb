class CreateCriteria < ActiveRecord::Migration
  def change
    create_table :criteria do |t|
      t.text :body
      t.integer :total_points
      t.timestamps
    end
  end
end
