class User < ActiveRecord::Base
  has_one :token

  validates :first_name, presence: :true, length: { maximum: 50 }
  validates :last_name, presence: :true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true,  uniqueness: true, length: { maximum: 100 }, format: { with: VALID_EMAIL_REGEX }

  brefore_create :tokenize

  def tokenize
    self.token = Token.create
  end
end
