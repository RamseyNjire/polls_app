class AddPresenceConstraintToPolls < ActiveRecord::Migration[6.1]
  def change
    change_column :polls, :title, :string, null: false
  end
end
