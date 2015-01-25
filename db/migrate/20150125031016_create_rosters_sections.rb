class CreateRostersSections < ActiveRecord::Migration
  def change
    create_table :rosters_sections, id: false do |t|
      t.belongs_to :roster
      t.belongs_to :section
    end
  end
end
