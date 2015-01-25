class FixRostersStudents < ActiveRecord::Migration
  def change
    remove_column :rosters_students, :rosters_id
    remove_column :rosters_students, :students_id
    add_column :rosters_students, :roster_id, :integer
    add_column :rosters_students, :student_id, :integer
  end
end
