class Token < ActiveRecord::Base
  belongs_to :user
  has_secure_token :value

  # validates :value, presence: true
  # validates :expires_at, presence: true

  before_create :set_expires_at

  def set_expires_at
    self.expires_at = DateTime.now.to_date + 30.days
  end
end
