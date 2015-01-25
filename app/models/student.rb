class Student < ActiveRecord::Base
  has_many :grades, as: :gradeable
  has_and_belongs_to_many :rosters

  #Validations
  validates :first_name, presence: :true, length: { maximum: 50 }
  validates :last_name, presence: :true, length: {maximum: 50 }
  VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, length: { maximum: 100 }, uniqueness: :true, format: { with: VALID_EMAIL_REGEX }
  validates :uid, presence: :true, length: { maximum: 25 }, uniqueness: :true

end
