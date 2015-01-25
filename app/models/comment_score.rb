class CommentScore < ActiveRecord::Base
  belongs_to :comment_scoreable, polymorphic: true

  #Validations
  validates :body, presence: :true, length: { maximum: 500 }
end
