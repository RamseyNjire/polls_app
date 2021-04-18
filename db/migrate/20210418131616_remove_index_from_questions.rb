class RemoveIndexFromQuestions < ActiveRecord::Migration[6.1]
  def change
    remove_index :questions, :poll_id
  end
end
