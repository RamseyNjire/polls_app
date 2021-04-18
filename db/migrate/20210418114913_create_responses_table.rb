class CreateResponsesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :responses_tables do |t|
      t.integer :answer_choice_id
      t.integer :respondent_id

      t.index [:answer_choice_id, :respondent_id]

      t.timestamps
    end
  end
end
