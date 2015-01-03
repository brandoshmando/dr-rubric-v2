class CreateCoursesEvals < ActiveRecord::Migration
  def change
    create_table :courses_evals, id: false do |t|
      t.belongs_to :courses
      t.belongs_to :evals
    end
  end
end
