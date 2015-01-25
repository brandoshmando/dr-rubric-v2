class Section < ActiveRecord::Base
  has_many :grades, as: :gradeable
  has_and_belongs_to_many :assistants, join_table: :assistants_sections
  has_and_belongs_to_many :rosters
  belongs_to :course

  #Validations
  validates :title, presence: :true, length: { maximum: 50 }
end
