class Roster < ActiveRecord::Base
  has_one :section
  has_and_belongs_to_many :students
end
