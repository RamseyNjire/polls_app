class AddNullConstraintsToResponses < ActiveRecord::Migration[6.1]
  def change
    change_column :responses, :respondent_id, :integer, null: false
    change_column :responses, :answer_choice_id, :integer, null: false
  end
end
