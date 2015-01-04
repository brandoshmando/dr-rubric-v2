class Professor < User
  #Relationships
  has_many :courses
  has_many :evals

  #Validations
  validates :type, presence: :true
end