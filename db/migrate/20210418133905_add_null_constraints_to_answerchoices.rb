class AddNullConstraintsToAnswerchoices < ActiveRecord::Migration[6.1]
  def change
    change_column :answerchoices, :text, :text, null: false
    change_column :answerchoices, :question_id, :integer, null: false
  end
end
