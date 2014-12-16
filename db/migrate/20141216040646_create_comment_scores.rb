class CreateCommentScores < ActiveRecord::Migration
  def change
    create_table :comment_scores do |t|
      t.integer :points
      t.timestamps
    end
  end
end
