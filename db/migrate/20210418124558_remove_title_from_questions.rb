class RemoveTitleFromQuestions < ActiveRecord::Migration[6.1]
  def change
    remove_column :questions, :title
  end
end
