class Criteria < ActiveRecord::Base
  has_many :comments
  belongs_to :eval

  #Validations
  validates :body, presence: :true, length: { maximum: 500 }
end
