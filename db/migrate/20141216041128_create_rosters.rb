class CreateRosters < ActiveRecord::Migration
  def change
    create_table :rosters do |t|
      t.integer :section
      t.timestamps
    end
  end
end
