class CreateCoursesGradingPeriods < ActiveRecord::Migration
  def change
    create_table :courses_grading_periods, id: false do |t|
      t.belongs_to :courses
      t.belongs_to :grading_periods
    end
  end
end
