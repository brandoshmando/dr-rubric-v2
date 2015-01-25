class AddEvalIdToCriterion < ActiveRecord::Migration
  def change
    add_column :criterion, :eval_id, :integer
  end
end
