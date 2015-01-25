class CreateCommentScores < ActiveRecord::Migration
  def change
    create_table :comment_scores do |t|
      t.text :body
      t.timestamps
    end
  end
end
