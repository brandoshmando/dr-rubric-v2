class CreateCoursesEvals < ActiveRecord::Migration
  def change
    create_table :courses_evals, id: false do |t|
      t.belongs_to :eval, index: true
      t.belongs_to :course, index: true
    end
  end
end
