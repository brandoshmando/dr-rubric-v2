class CreateTokens < ActiveRecord::Migration
  def change
    create_table :tokens do |t|
      t.string :value
      t.datetime :expires_at
      t.integer :user_id, unique: :true
      t.timestamps
    end
  add_index(:tokens, :user_id, unique: :true)
  end
end
