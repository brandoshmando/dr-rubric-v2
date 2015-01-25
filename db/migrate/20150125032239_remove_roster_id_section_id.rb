class RemoveRosterIdSectionId < ActiveRecord::Migration
  def change
    remove_column :rosters, :section_id
    remove_column :sections, :roster_id
  end
end
