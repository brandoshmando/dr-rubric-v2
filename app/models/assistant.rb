class Assistant < User
  #Relationships
  has_many :grades, as: :gradeable
  has_and_belongs_to_many :sections

  #Validations
  validates :type, presence: :true

end