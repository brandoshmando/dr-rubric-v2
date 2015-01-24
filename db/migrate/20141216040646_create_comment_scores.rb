class CreateCommentScores < ActiveRecord::Migration
  def change
    create_table :comment_scores do |t|
      t.string :body
      t.timestamps
    end
  end
end
