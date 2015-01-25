class GradingPeriod < ActiveRecord::Base
  has_and_belongs_to_many :courses

  #Validations
  validates :title, presence: :true, length: { maximum: 75 }
  validates :start_date, presence: :true
  validates :end_date, presence: :true
end
