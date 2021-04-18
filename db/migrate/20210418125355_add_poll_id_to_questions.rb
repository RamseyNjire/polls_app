class AddPollIdToQuestions < ActiveRecord::Migration[6.1]
  def change
    add_column :questions, :poll_id, :integer
  end
end
