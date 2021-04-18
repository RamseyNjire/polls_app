class AddIndexToQuestions < ActiveRecord::Migration[6.1]
  def change
    add_index :questions, :poll_id, unique: true
  end
end
