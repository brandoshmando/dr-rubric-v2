class Token < ActiveRecord::Base
  #Relatinships
  belongs_to :user

  #Callbacks
  has_secure_token :value
  before_validation :set_expires_at, on: :create

  #Validations
  validates :expires_at, presence: true

  def token_expired?
    if self.expiration_date < DateTime.now.to_date
      self.delete
      return true
    end
  end

  def set_expires_at
    self.expires_at = DateTime.now.to_date + 30.days
  end
end
