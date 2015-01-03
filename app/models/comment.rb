class Comment < ActiveRecord::Base
  has_many :comment_scores, as: :comment_scoreable
  belongs_to :criterion
end
