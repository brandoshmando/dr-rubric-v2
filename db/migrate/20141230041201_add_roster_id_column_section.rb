class AddRosterIdColumnSection < ActiveRecord::Migration
  def change
    add_column :sections, :roster_id, :integer
  end
end
