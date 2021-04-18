class AddNewIndexToQuestions < ActiveRecord::Migration[6.1]
  def change
    add_index :questions, :poll_id
  end
end
