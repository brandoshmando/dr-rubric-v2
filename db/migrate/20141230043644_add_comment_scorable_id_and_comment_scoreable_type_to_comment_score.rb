class AddCommentScorableIdAndCommentScoreableTypeToCommentScore < ActiveRecord::Migration
  def change
    add_column :comment_scores, :comment_scoreable_id, :integer
    add_column :comment_scores, :comment_scoreable_type, :string
  end
end
