class Comment < ActiveRecord::Base
  has_many :comment_scores, as: :comment_scoreable
  belongs_to :criteria

  #Validations
  validates :body, presence: :true, length: { maximum: 500 }
end
