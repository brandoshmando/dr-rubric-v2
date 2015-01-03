class Eval < ActiveRecord::Base
  has_many :grades, as: :gradeable
  has_many :criterion
  has_and_belongs_to_many :courses
  belongs_to :professor
end
