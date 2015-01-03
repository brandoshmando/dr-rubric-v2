class CreateRostersStudents < ActiveRecord::Migration
  def change
    create_table :rosters_students, id: false do |t|
      t.belongs_to :rosters
      t.belongs_to :students
    end
  end
end
