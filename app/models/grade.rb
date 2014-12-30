class Grade < ActiveRecord::Base
  belongs_to :gradeable, polymorphic: true
  has_many :comment_scores
end
