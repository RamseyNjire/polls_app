class AddTextToQuestions < ActiveRecord::Migration[6.1]
  def change
    add_column :questions, :text, :text
  end
end
