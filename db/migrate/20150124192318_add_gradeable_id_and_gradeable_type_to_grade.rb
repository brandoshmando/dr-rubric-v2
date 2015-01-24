class AddGradeableIdAndGradeableTypeToGrade < ActiveRecord::Migration
  def change
    add_column :grades, :gradeable_id, :integer
    add_column :grades, :gradeable_type, :string
  end
end
