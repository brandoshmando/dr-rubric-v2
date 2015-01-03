class CommentScore < ActiveRecord::Base
  belongs_to :comment_scoreable, polymorphic: true
end
