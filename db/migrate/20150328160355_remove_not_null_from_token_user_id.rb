class RemoveNotNullFromTokenUserId < ActiveRecord::Migration
  def change
    change_column :tokens, :user_id, :integer, null: true
  end
  #per suggestion of has_secure_token gem
  add_index(:tokens, :value, unique: :true)
end
