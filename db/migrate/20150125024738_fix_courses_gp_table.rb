class FixCoursesGpTable < ActiveRecord::Migration
  def change
    remove_column :courses_grading_periods, :courses_id
    remove_column :courses_grading_periods, :grading_periods_id
    add_column :courses_grading_periods, :course_id, :integer
    add_column :courses_grading_periods, :grading_period_id, :integer
  end
end
