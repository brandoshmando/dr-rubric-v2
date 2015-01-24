class AddProfessorIdColumnEvals < ActiveRecord::Migration
  def change
    add_column :evals, :professor_id, :integer
  end
end
