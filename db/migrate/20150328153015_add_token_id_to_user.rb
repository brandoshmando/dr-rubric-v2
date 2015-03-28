class AddTokenIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :token_id, :integer
  end
end
