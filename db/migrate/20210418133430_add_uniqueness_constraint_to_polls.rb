class AddUniquenessConstraintToPolls < ActiveRecord::Migration[6.1]
  def change
    change_column :polls, :title, :string, unique: true
  end
end
