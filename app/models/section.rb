class Section < ActiveRecord::Base
  has_one :roster
  has_many :grades
  has_and_belongs_to_many :assistants
  belongs_to :course
end
