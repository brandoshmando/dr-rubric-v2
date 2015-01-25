class Course < ActiveRecord::Base
  has_many :sections
  has_and_belongs_to_many :grading_periods
  has_and_belongs_to_many :evals
  belongs_to :professor

  #Validations
  validates :title, presence: :true, length: { maximum: 50 }
  validates :description, presence: :true, length: { maximum: 255 }
end
