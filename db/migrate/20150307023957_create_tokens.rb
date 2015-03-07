class CreateTokens < ActiveRecord::Migration
  def change
    create_table :tokens do |t|
      t.string :value, null: false
      t.datetime :expires_at, null: false
      t.integer :user_id, null: false
      t.timestamps
    end
  add_index(:tokens, :user_id, unique: :true)
  end
end
