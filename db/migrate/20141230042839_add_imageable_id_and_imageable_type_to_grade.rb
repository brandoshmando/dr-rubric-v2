class AddImageableIdAndImageableTypeToGrade < ActiveRecord::Migration
  def change
    add_column :grades, :imageable_id, :integer
    add_column :grades, :imageable_type, :string
  end
end
