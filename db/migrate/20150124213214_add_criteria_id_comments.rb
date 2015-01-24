class AddCriteriaIdComments < ActiveRecord::Migration
  def change
    add_column :comments, :criteria_id, :integer
  end
end
