class RemoveIndexFromPolls < ActiveRecord::Migration[6.1]
  def change
    remove_index :polls, :user_id
  end
end
