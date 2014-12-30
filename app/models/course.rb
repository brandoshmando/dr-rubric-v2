class Course < ActiveRecord::Base
  has_many :sections
  has_and_belongs_to_many :grading_periods, as: :gpds
  has_and_belongs_to_many :evals
end
