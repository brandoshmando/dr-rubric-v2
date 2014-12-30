class Grade < ActiveRecord::Base
  belongs_to :gradeable, polymorphic: true

end
