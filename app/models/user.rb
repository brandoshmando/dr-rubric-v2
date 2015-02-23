class User < ActiveRecord::Base
  #simple_token_authentication usage
  acts_as_token_authenticatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable

  validates :first_name, presence: :true, length: { maximum: 50 }
  validates :last_name, presence: :true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true,  uniqueness: true, length: { maximum: 100 }, format: { with: VALID_EMAIL_REGEX }
end
