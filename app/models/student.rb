class Student < ActiveRecord::Base
  has_many :grades, as: :gradeable
  has_and_belongs_to_many :rosters
end
