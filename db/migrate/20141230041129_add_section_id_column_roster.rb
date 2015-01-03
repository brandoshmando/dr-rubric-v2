class AddSectionIdColumnRoster < ActiveRecord::Migration
  def change
    add_column :rosters, :section_id, :integer
  end
end
