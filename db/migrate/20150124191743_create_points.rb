class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.decimal :value
      t.integer :pointable_id
      t.string :pointable_type
      t.timestamps
    end
  end
end
