class Point < ActiveRecord::Base
  belongs_to :pointable, polymorphic: true

  #Validations
  validates :value, presence: :true
end
