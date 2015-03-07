class Token < ActiveRecord::Base

  belongs_to :user

  validates :value, presence: true
  validates :user_id, presence: true
  validates :expires_at, presence: true

end
