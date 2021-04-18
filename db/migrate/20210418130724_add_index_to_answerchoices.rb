class AddIndexToAnswerchoices < ActiveRecord::Migration[6.1]
  def change
    add_index :answerchoices, :question_id
  end
end
