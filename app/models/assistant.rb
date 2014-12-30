class Assistant < User
  has_many :grades, as: :gradeable
  has_and_belongs_to_many :sections
end